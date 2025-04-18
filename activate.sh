#!/bin/zsh

# Get the directory where the script is located
SCRIPT_DIR=${0:a:h}

# Change to the project directory
cd "$SCRIPT_DIR"

# Check if venv exists, if not create it with Homebrew Python
if [ ! -d "venv" ]; then
    echo "Creating new virtual environment..."
    /opt/homebrew/bin/python3 -m venv venv
fi

# Activate the virtual environment
source venv/bin/activate

# Verify Python version and location
echo "Virtual environment activated!"
echo "Current directory: $(pwd)"
echo "Using Python: $(which python3)"
echo "Python version: $(python3 -V)"