#!/bin/bash

set -e

GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Detect current directory name
current_dir_name=${PWD##*/}

if [ "$current_dir_name" == "data" ]; then
    TARGET_DIR="./"
else
    TARGET_DIR="./data"
    mkdir -p "$TARGET_DIR"
fi

# Spinner function for animation
spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    echo -n " "
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

echo -e "${GREEN}📦 Setting up data and model download...${NC}"

# 1. Check for Kaggle CLI
if ! command -v kaggle &>/dev/null; then
    echo "❌ 'kaggle' CLI is not installed. Install it with:"
    echo "   pip install kaggle"
    exit 1
fi

# 2. Check for Kaggle credentials
if [ ! -f ~/.kaggle/kaggle.json ]; then
    echo "❌ Kaggle API token not found. Please place 'kaggle.json' in '~/.kaggle/'"
    exit 1
fi

# 3. Download dataset to $TARGET_DIR
echo -e "${GREEN}⬇️  Downloading competition data (soil-classification)...${NC}"
kaggle competitions download -c soil-classification -p "$TARGET_DIR" >/dev/null &
spinner $!

# 4. Unzip inside $TARGET_DIR
echo -e "${GREEN}📂 Unzipping files...${NC}"
unzip -o "$TARGET_DIR"/*.zip -d "$TARGET_DIR" >/dev/null
rm -f "$TARGET_DIR"/*.zip

# 5. Model download
read -p "Do you want to download the pre-trained model? (y/n): " download_model

if [[ "$download_model" == "y" || "$download_model" == "Y" ]]; then
    model_link="https://s3.tebi.io/annam/f1_8_resnet50_9918_lr_0001.pth"
    echo -e "${GREEN}⬇️  Downloading model from $model_link...${NC}"
    curl -L "$model_link" -o "$TARGET_DIR/model.pth" &
    spinner $!
    echo -e "${GREEN}✅ Model downloaded as ${TARGET_DIR}/model.pth${NC}"
else
    echo "ℹ️ Skipping model download."
fi

echo -e "${GREEN}✅ All done!${NC}"
