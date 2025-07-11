#!/bin/bash

# Start Ollama in the background.
ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 5

echo "🔴 Retrieve LLAMA3 model..."
ollama pull llama3.2
echo "🟢 Done!"

echo "🔴 Retrieve qwen model..."
ollama pull qwen2.5:7b
echo "🟢 Done!"

echo "🔴 Retrieve mxbai-embed-large Embedding model..."
ollama pull mxbai-embed-large:latest
echo "🟢 Done!"

#pull command template
#echo "🔴 Retrieve gemma model..."
#ollama pull gemma3:4b
#echo "🟢 Done!"

# Wait for Ollama process to finish.
wait $pid