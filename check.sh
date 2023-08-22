#!/bin/sh

# List of binaries to check for
binaries="ruby git jq"

# Function to check if a binary is installed
check_binary() {
    binary="$1"
    if ! command -v "$binary" > /dev/null 2>&1; then
        echo "$binary is not installed."
        return 1
    fi
}

# Loop through the list of binaries and check each one
all_binaries_installed=true
for binary in $binaries; do
    if ! check_binary "$binary"; then
        all_binaries_installed=false
    fi
done

if [ "$all_binaries_installed" = "false" ]; then
    echo "Please install the missing binaries to continue."
    exit 1
fi

echo "All required binaries are installed."
