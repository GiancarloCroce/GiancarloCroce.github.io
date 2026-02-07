#!/bin/bash
# Setup script for Jekyll academic website

set -e

echo "=== Setting up Jekyll Academic Website ==="
echo ""

# Check if ruby-dev is installed
if ! dpkg -l | grep -q ruby-dev; then
    echo "Installing Ruby development headers..."
    sudo apt-get install -y ruby-dev build-essential
else
    echo "Ruby development headers already installed."
fi

# Navigate to project directory
cd "$(dirname "$0")"

# Set up PATH for bundler
export PATH="$HOME/.local/share/gem/ruby/3.2.0/bin:$PATH"

# Configure bundler to use local path
echo "Configuring Bundler..."
bundle config set --local path 'vendor/bundle'

# Install dependencies
echo "Installing Ruby dependencies (this may take a few minutes)..."
bundle install

# Fix libv8-node path issue for mini_racer (if needed)
if [ -d "vendor/bundle/ruby/3.2.0/gems/libv8-node" ]; then
    echo "Fixing libv8-node library path..."
    LIBV8_DIR=$(find vendor/bundle -name "libv8-node*" -type d | head -1)
    if [ -n "$LIBV8_DIR" ] && [ -f "$LIBV8_DIR/vendor/v8/x86_64-linux/libv8/obj/libv8_monolith.a" ]; then
        mkdir -p "$LIBV8_DIR/vendor/v8/x86_64-linux-gnu/libv8/obj"
        if [ ! -f "$LIBV8_DIR/vendor/v8/x86_64-linux-gnu/libv8/obj/libv8_monolith.a" ]; then
            ln -sf "$(readlink -f "$LIBV8_DIR/vendor/v8/x86_64-linux/libv8/obj/libv8_monolith.a")" \
                   "$LIBV8_DIR/vendor/v8/x86_64-linux-gnu/libv8/obj/libv8_monolith.a"
        fi
    fi
fi

# Activate Python venv for Jupyter support
echo "Activating Python virtual environment..."
source /home/giancarlo/work_python_env/bin/activate

# Start Jekyll server
echo ""
echo "=== Starting Jekyll server ==="
echo "Your website will be available at: http://localhost:4000"
echo "Press Ctrl+C to stop the server"
echo ""

bundle exec jekyll serve --lsi --host 0.0.0.0
