#!/bin/bash

file_path="../init.lua"

nvim --headless -c "U" -c 'wq' "$file_path"
