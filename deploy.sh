#!/bin/bash
# deploy.sh: Deploys the latest release of markdown-docs-kit to a target directory.

set -euo pipefail

# Usage: Display help message
function usage {
    cat <<EOF
Usage: $0 --target <target_directory> [--config <config_file>] [--repo-owner <owner>] [--repo-name <name>]
EOF
    exit 1
}

# Check if required dependencies are installed
function check_dependencies {
    local dependencies=("yq" "curl" "unzip" "jq")
    for dep in "${dependencies[@]}"; do
        command -v "$dep" >/dev/null 2>&1 || {
            echo >&2 "$dep: required but not installed. Please install it via your package manager."
            exit 1
        }
    done
}

# Parse command-line arguments
function parse_args {
    CONFIG_FILE="config.yml"
    TARGET_DIR=""
    REPO_OWNER="Jekwwer"
    REPO_NAME="markdown-docs-kit"

    while [[ "$#" -gt 0 ]]; do
        case $1 in
        --config)
            CONFIG_FILE="$2"
            shift 2
            ;;
        --target)
            TARGET_DIR="$2"
            shift 2
            ;;
        --repo-owner)
            REPO_OWNER="$2"
            shift 2
            ;;
        --repo-name)
            REPO_NAME="$2"
            shift 2
            ;;
        *)
            echo "Unknown parameter: $1"
            usage
            ;;
        esac
    done

    if [[ -z "$TARGET_DIR" ]]; then
        usage
    fi

    if [[ ! -f "$CONFIG_FILE" ]]; then
        echo "Configuration file '$CONFIG_FILE' not found!"
        exit 1
    fi
}

# Fetch the latest release information from GitHub
function fetch_latest_release {
    echo "Fetching the latest release from $REPO_OWNER/$REPO_NAME..."
    local api_url="https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/releases/latest"
    LATEST_RELEASE=$(curl -s --no-include "$api_url" | jq -r '.tag_name')
    DOWNLOAD_URL=$(curl -s "$api_url" | jq -r '.assets[0].browser_download_url')

    if [[ -z "$LATEST_RELEASE" || -z "$DOWNLOAD_URL" ]]; then
        echo "Failed to fetch the latest release information."
        exit 1
    fi

    echo "Latest release: $LATEST_RELEASE"
    echo "Downloading documentation from $DOWNLOAD_URL..."
}

# Download and extract the release archive into a temporary directory
function download_and_extract_release {
    TEMP_DIR=$(mktemp -d)
    ZIP_FILE="$TEMP_DIR/docs.zip"

    curl -L -o "$ZIP_FILE" "$DOWNLOAD_URL"
    unzip -q "$ZIP_FILE" -d "$TEMP_DIR"
}

# Escape special characters for sed substitutions
function escape_sed {
    echo "$1" | sed -e 's/[\/&]/\\&/g'
}

# Read and escape configuration values from the YAML file
function read_config {
    AUTHOR_NAME=$(escape_sed "$(yq eval '.author_name' "$CONFIG_FILE")")
    PROJECT_NAME=$(escape_sed "$(yq eval '.project_name' "$CONFIG_FILE")")
    REPO_OWNER=$(escape_sed "$(yq eval '.repo_owner' "$CONFIG_FILE")")
    REPO_NAME=$(escape_sed "$(yq eval '.repo_name' "$CONFIG_FILE")")

    SCHOOL_NAME=$(escape_sed "$(yq eval '.school_name' "$CONFIG_FILE")")
    COURSE_NAME=$(escape_sed "$(yq eval '.course_name' "$CONFIG_FILE")")
    ACADEMIC_YEAR=$(escape_sed "$(yq eval '.academic_year' "$CONFIG_FILE")")

    CONTACT_EMAIL=$(escape_sed "$(yq eval '.contact_email' "$CONFIG_FILE")")
    REPORT_EMAIL=$(escape_sed "$(yq eval '.report_email' "$CONFIG_FILE")")

    CONTRIBUTING_URL=$(escape_sed "$(yq eval '.contributing_url' "$CONFIG_FILE")")
    DISCUSSIONS_URL=$(escape_sed "$(yq eval '.discussions_url' "$CONFIG_FILE")")
    DOCUMENTATION_URL=$(escape_sed "$(yq eval '.documentation_url' "$CONFIG_FILE")")
    ISSUES_URL=$(escape_sed "$(yq eval '.issues_url' "$CONFIG_FILE")")
    SECURITY_URL=$(escape_sed "$(yq eval '.security_url' "$CONFIG_FILE")")

    GITHUB_USERNAME=$(escape_sed "$(yq eval '.github_username' "$CONFIG_FILE")")
    BUY_ME_A_COFFEE_USERNAME=$(escape_sed "$(yq eval '.buy_me_a_coffee_username' "$CONFIG_FILE")")
    KO_FI_USERNAME=$(escape_sed "$(yq eval '.ko_fi_username' "$CONFIG_FILE")")
    LIBERAPAY_USERNAME=$(escape_sed "$(yq eval '.liberapay_username' "$CONFIG_FILE")")
    OPEN_COLLECTIVE_USERNAME=$(escape_sed "$(yq eval '.open_collective_username' "$CONFIG_FILE")")
    PATREON_USERNAME=$(escape_sed "$(yq eval '.patreon_username' "$CONFIG_FILE")")

    RESPONSE_TIME=$(escape_sed "$(yq eval '.response_time' "$CONFIG_FILE")")
    RESOLUTION_TIME=$(escape_sed "$(yq eval '.resolution_time' "$CONFIG_FILE")")
    LATEST_VERSION=$(escape_sed "$(yq eval '.latest_version' "$CONFIG_FILE")")
    PREVIOUS_VERSION=$(escape_sed "$(yq eval '.previous_version' "$CONFIG_FILE")")
}

# Replace placeholders in a file and output to the target file
function replace_placeholders {
    local file="$1"
    local output_file="$2"

    sed \
        -e "s/{[[:space:]]*{[[:space:]]*AUTHOR_NAME[[:space:]]*}[[:space:]]*}/$AUTHOR_NAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*PROJECT_NAME[[:space:]]*}[[:space:]]*}/$PROJECT_NAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*REPO_OWNER[[:space:]]*}[[:space:]]*}/$REPO_OWNER/g" \
        -e "s/{[[:space:]]*{[[:space:]]*REPO_NAME[[:space:]]*}[[:space:]]*}/$REPO_NAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*SCHOOL_NAME[[:space:]]*}[[:space:]]*}/$SCHOOL_NAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*COURSE_NAME[[:space:]]*}[[:space:]]*}/$COURSE_NAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*ACADEMIC_YEAR[[:space:]]*}[[:space:]]*}/$ACADEMIC_YEAR/g" \
        -e "s/{[[:space:]]*{[[:space:]]*CONTACT_EMAIL[[:space:]]*}[[:space:]]*}/$CONTACT_EMAIL/g" \
        -e "s/{[[:space:]]*{[[:space:]]*REPORT_EMAIL[[:space:]]*}[[:space:]]*}/$REPORT_EMAIL/g" \
        -e "s/{[[:space:]]*{[[:space:]]*CONTRIBUTING_URL[[:space:]]*}[[:space:]]*}/$CONTRIBUTING_URL/g" \
        -e "s/{[[:space:]]*{[[:space:]]*DISCUSSIONS_URL[[:space:]]*}[[:space:]]*}/$DISCUSSIONS_URL/g" \
        -e "s/{[[:space:]]*{[[:space:]]*DOCUMENTATION_URL[[:space:]]*}[[:space:]]*}/$DOCUMENTATION_URL/g" \
        -e "s/{[[:space:]]*{[[:space:]]*ISSUES_URL[[:space:]]*}[[:space:]]*}/$ISSUES_URL/g" \
        -e "s/{[[:space:]]*{[[:space:]]*SECURITY_URL[[:space:]]*}[[:space:]]*}/$SECURITY_URL/g" \
        -e "s/{[[:space:]]*{[[:space:]]*GITHUB_USERNAME[[:space:]]*}[[:space:]]*}/$GITHUB_USERNAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*BUY_ME_A_COFFEE_USERNAME[[:space:]]*}[[:space:]]*}/$BUY_ME_A_COFFEE_USERNAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*KO_FI_USERNAME[[:space:]]*}[[:space:]]*}/$KO_FI_USERNAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*LIBERAPAY_USERNAME[[:space:]]*}[[:space:]]*}/$LIBERAPAY_USERNAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*OPEN_COLLECTIVE_USERNAME[[:space:]]*}[[:space:]]*}/$OPEN_COLLECTIVE_USERNAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*PATREON_USERNAME[[:space:]]*}[[:space:]]*}/$PATREON_USERNAME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*RESPONSE_TIME[[:space:]]*}[[:space:]]*}/$RESPONSE_TIME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*RESOLUTION_TIME[[:space:]]*}[[:space:]]*}/$RESOLUTION_TIME/g" \
        -e "s/{[[:space:]]*{[[:space:]]*LATEST_VERSION[[:space:]]*}[[:space:]]*}/$LATEST_VERSION/g" \
        -e "s/{[[:space:]]*{[[:space:]]*PREVIOUS_VERSION[[:space:]]*}[[:space:]]*}/$PREVIOUS_VERSION/g" \
        "$file" >"$output_file"
}

# Process and replace placeholders in all files except README templates
function process_files {
    find "$TEMP_DIR" -type f \( -name "*.md" -o -name "*.yml" \) \
        ! -name 'README.md' \
        ! -name 'SCHOOL_PROJECT_README.md' | while read -r file; do
        local rel_path="${file#$TEMP_DIR/}"
        local output_file="$TARGET_DIR/$rel_path"
        mkdir -p "$(dirname "$output_file")"
        replace_placeholders "$file" "$output_file"
    done
}

# Process the README file separately and remove any unused template
function process_readme {
    # If a README.md already exists in the target, ask if it should be updated.
    if [[ -f "$TARGET_DIR/README.md" ]]; then
        read -p "README.md already exists. Do you want to update it? (y/n): " REPLACE
        if [[ "$REPLACE" != "y" ]]; then
            echo "Keeping existing README.md."
            # Clean up any school project template in target if present.
            [[ -f "$TARGET_DIR/SCHOOL_PROJECT_README.md" ]] && rm "$TARGET_DIR/SCHOOL_PROJECT_README.md"
            return
        fi
    fi

    # Ask if this is a school project.
    read -p "Is this a school project? (y/n): " SCHOOL_PROJECT
    if [[ "$SCHOOL_PROJECT" == "y" ]]; then
        if [[ -f "$TEMP_DIR/SCHOOL_PROJECT_README.md" ]]; then
            echo "Using school project README."
            replace_placeholders "$TEMP_DIR/SCHOOL_PROJECT_README.md" "$TARGET_DIR/README.md"
        else
            echo "School project README template not found. Falling back to general README."
            if [[ -f "$TEMP_DIR/README.md" ]]; then
                replace_placeholders "$TEMP_DIR/README.md" "$TARGET_DIR/README.md"
            else
                echo "General README template not found. No README updated."
            fi
        fi
    else
        if [[ -f "$TEMP_DIR/README.md" ]]; then
            echo "Using general README."
            replace_placeholders "$TEMP_DIR/README.md" "$TARGET_DIR/README.md"
        else
            echo "General README template not found. No README updated."
        fi
        # Remove any leftover school project template if it exists.
        [[ -f "$TARGET_DIR/SCHOOL_PROJECT_README.md" ]] && rm "$TARGET_DIR/SCHOOL_PROJECT_README.md"
    fi
}

# Clean up temporary files
function cleanup {
    rm -rf "$TEMP_DIR"
}

# Main entry point
function main {
    check_dependencies
    parse_args "$@"
    fetch_latest_release
    download_and_extract_release
    read_config
    process_files
    process_readme
    cleanup
    echo "Documentation successfully deployed to $TARGET_DIR"
}

main "$@"
