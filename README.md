# 🌱 Annam.ai Hackathon Challenge

This repo documents our teams approach to 2 competitions

- Soil Classification
- Soil Detection

## Project Structure

```

part-1
      |-- /notebooks          # Jupyter notebooks for training and inference demos
      |-- /data               # Dataset storage (downloaded via script)
      |-- /docs               # Documentation and architecture diagrams
      |-- README.md           # Instructions
      |-- requirements.txt    # Python dependencies
      |-- download.sh         # Data and pre-trained model download script
      |-- metrics.json        # Evaluation metrics summary
      |-- /src
part-2
      |-- /notebooks          # Jupyter notebooks for training and inference demos
      |-- /data               # Dataset storage (downloaded via script)
      |-- /docs               # Documentation and architecture diagrams
      |-- README.md           # Instructions
      |-- requirements.txt    # Python dependencies
      |-- download.sh         # Data and pre-trained model download script
      |-- metrics.json        # Evaluation metrics summary
      |-- /src

```

---

## Setup & Installation

### Navigate to individual competition directories for instruction

## Notes

- The project uses relative paths for data loading, making it easy to run locally or on other platforms.
- The `download.sh` script automates dataset download and extraction from Kaggle.
- You can skip the pre-trained model download in the script if you prefer to train from scratch.
