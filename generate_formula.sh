#!/bin/bash

set -e

# Usage: ./generate_formula.sh <tool> --version <version>
# Example: ./generate_formula.sh constraint --version v1.0.0

TOOL=""
VERSION=""

while [[ $# -gt 0 ]]; do
  case $1 in
    --version)
      VERSION="$2"
      shift 2
      ;;
    constraint|newton)
      TOOL="$1"
      shift
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

if [ -z "$TOOL" ] || [ -z "$VERSION" ]; then
  echo "Usage: $0 <tool> --version <version>"
  echo "Example: $0 constraint --version v1.0.0"
  exit 1
fi

# Remove 'v' prefix if present
VERSION_CLEAN=${VERSION#v}

# Repository mapping
declare -A repos=(
  ["constraint"]="gonewton/constraints"
  ["newton"]="gonewton/newton"
)

REPO=${repos[$TOOL]}

if [ -z "$REPO" ]; then
  echo "Unknown tool: $TOOL"
  exit 1
fi

# Fetch release info from GitHub API
API_URL="https://api.github.com/repos/$REPO/releases/tags/$VERSION"
echo "Fetching release info from $API_URL"

RELEASE_DATA=$(curl -s "$API_URL")

if [ "$(echo "$RELEASE_DATA" | jq -r '.message')" = "Not Found" ]; then
  echo "Release $VERSION not found for $REPO"
  exit 1
fi

# Extract download URLs and SHA256
LINUX_GNU_URL=$(echo "$RELEASE_DATA" | jq -r '.assets[] | select(.name | contains("linux-gnu")) | .browser_download_url' | head -1)
LINUX_GNU_SHA=$(echo "$RELEASE_DATA" | jq -r '.assets[] | select(.name | contains("linux-gnu")) | .browser_download_url' | head -1 | xargs curl -sL | sha256sum | cut -d' ' -f1)

LINUX_MUSL_URL=$(echo "$RELEASE_DATA" | jq -r '.assets[] | select(.name | contains("linux-musl")) | .browser_download_url' | head -1)
LINUX_MUSL_SHA=$(echo "$RELEASE_DATA" | jq -r '.assets[] | select(.name | contains("linux-musl")) | .browser_download_url' | head -1 | xargs curl -sL | sha256sum | cut -d' ' -f1)

WINDOWS_URL=$(echo "$RELEASE_DATA" | jq -r '.assets[] | select(.name | contains("windows")) | .browser_download_url' | head -1)
WINDOWS_SHA=$(echo "$RELEASE_DATA" | jq -r '.assets[] | select(.name | contains("windows")) | .browser_download_url' | head -1 | xargs curl -sL | sha256sum | cut -d' ' -f1)

# Use musl for Linux by default so the binary runs on any glibc (avoids GLIBC_2.39 etc.)
# Generate formula
FORMULA_FILE="Formula/${TOOL}.rb"

cat > "$FORMULA_FILE" << EOF
class ${TOOL^} < Formula
  desc "${TOOL^} CLI tool"
  homepage "https://github.com/$REPO"
  url "$LINUX_MUSL_URL"
  sha256 "$LINUX_MUSL_SHA"
  version "$VERSION_CLEAN"

  on_linux do
    if Hardware::CPU.intel?
      url "$LINUX_MUSL_URL"
      sha256 "$LINUX_MUSL_SHA"
    end
  end

  def install
    bin.install "${TOOL}"
  end

  test do
    system "#{bin}/${TOOL}", "--version"
  end
end
EOF

echo "Generated $FORMULA_FILE"