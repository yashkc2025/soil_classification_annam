# 🌱 Annam.ai Hackathon Challenge

This repo documents our teams approach to 2 competitions

- Soil Classification
- Soil Detection

> We used Data Enhancement techniques to address class imbalance in training set!

## Project Structure

```

part-1
      |-- /notebooks          # Jupyter notebooks for training and inference demos
      |-- /data               # Dataset storage (downloaded via script)
      |-- /docs               # Documentation and architecture diagrams
      |-- README.md           # This file
      |-- requirements.txt    # Python dependencies
      |-- download.sh         # Data and pre-trained model download script
      |-- metrics.json        # Evaluation metrics summary
      |-- /src
part-2
      |-- /notebooks          # Jupyter notebooks for training and inference demos
      |-- /data               # Dataset storage (downloaded via script)
      |-- /docs               # Documentation and architecture diagrams
      |-- README.md           # This file
      |-- requirements.txt    # Python dependencies
      |-- download.sh         # Data and pre-trained model download script
      |-- metrics.json        # Evaluation metrics summary
      |-- /src

```

---

## Setup & Installation

1. Clone this repository:

```bash
git clone https://github.com/yashkc2025/soil_classification_annam
cd soil_classification_annam
```

> Navigate to individual directories to run scripts

## Notes

- The project uses relative paths for data loading, making it easy to run locally or on other platforms.
- The `download.sh` script automates dataset download and extraction from Kaggle.
- You can skip the pre-trained model download in the script if you prefer to train from scratch.
