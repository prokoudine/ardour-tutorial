#!/usr/bin/env bash
# Version consistency checker for ardour-tutorial
# Ensures all config files use the same Hugo and Go versions

set -euo pipefail

# Canonical versions (single source of truth)
REQUIRED_HUGO_VERSION="0.145.0"
REQUIRED_GO_VERSION="1.23.6"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

errors=0

echo "Checking version consistency..."
echo "Required Hugo: ${REQUIRED_HUGO_VERSION}"
echo "Required Go: ${REQUIRED_GO_VERSION}"
echo ""

# Check GitHub Actions workflow
echo -n "Checking .github/workflows/pages.yaml... "
if grep -q "HUGO_VERSION: ${REQUIRED_HUGO_VERSION}" .github/workflows/pages.yaml && \
   grep -q "go-version: '${REQUIRED_GO_VERSION}'" .github/workflows/pages.yaml; then
    echo -e "${GREEN}✓${NC}"
else
    echo -e "${RED}✗${NC}"
    echo "  Expected Hugo ${REQUIRED_HUGO_VERSION} and Go ${REQUIRED_GO_VERSION}"
    ((errors++))
fi

# Check go.mod
echo -n "Checking go.mod... "
if grep -q "go ${REQUIRED_GO_VERSION}" go.mod; then
    echo -e "${GREEN}✓${NC}"
else
    echo -e "${RED}✗${NC}"
    echo "  Expected go ${REQUIRED_GO_VERSION}"
    ((errors++))
fi

# Check devcontainer.json
echo -n "Checking .devcontainer/devcontainer.json... "
if grep -q "\"version\": \"${REQUIRED_HUGO_VERSION}\"" .devcontainer/devcontainer.json; then
    echo -e "${GREEN}✓${NC}"
else
    echo -e "${RED}✗${NC}"
    echo "  Expected Hugo version ${REQUIRED_HUGO_VERSION}"
    ((errors++))
fi

# Check gitpod.yml (warn only, since it uses brew)
echo -n "Checking .gitpod.yml... "
if grep -q "brew install hugo" .gitpod.yml; then
    echo -e "${YELLOW}⚠${NC}"
    echo "  Warning: Gitpod uses 'brew install hugo' which installs latest version"
    echo "  Consider pinning to ${REQUIRED_HUGO_VERSION}"
fi

echo ""
if [ $errors -eq 0 ]; then
    echo -e "${GREEN}All version checks passed!${NC}"
    exit 0
else
    echo -e "${RED}Found ${errors} version mismatch(es)${NC}"
    exit 1
fi
