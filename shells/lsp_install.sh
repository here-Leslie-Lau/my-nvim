#!/bin/bash

file_path="../init.lua"

nvim --headless -c "MasonInstall buf clangd taplo lua-language-server gopls" -c 'wq' "$file_path"
