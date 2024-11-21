#!/usr/bin/bash

echo "Ollama current version:"
ollama -v

echo "Updating Ollama..."

curl https://ollama.ai/install.sh | sh

echo "Update complete, restarting service..."
service ollama restart

# echo " Ollama version installed:"
# ollama -v
echo "Done!"
echo

