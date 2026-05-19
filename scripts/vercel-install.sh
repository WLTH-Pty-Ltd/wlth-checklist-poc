#!/bin/bash
set -e

# Rewrite all GitHub SSH URL variants to HTTPS so npm works without an SSH key.
# The design system and any other github: dependencies are public, so no token needed.
git config --global url."https://github.com/".insteadOf "git@github.com:"
git config --global url."https://github.com/".insteadOf "ssh://git@github.com/"
git config --global url."https://github.com/".insteadOf "git+ssh://git@github.com/"

npm install
