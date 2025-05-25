# 🌱 Soil Image Classification Challenge - Part 1

Welcome to our solution for the **Soil Image Classification Challenge** organized by
**Annam.ai at IIT Ropar**! This competition serves as an exciting initial task for
shortlisted hackathon participants.

This repo documents our teams approach to this competition focused on classifying soil images into four distinct types.

### 👥 About US

Our team "Synfire Chain" is named after feed-forward network of neurons, and it consists of 2 members:

- Yash Kumar, B.S @ IITM
- Astitva Agarwal, B.S @ IITM

#### **🏆 We achieved a perfect F1 score on leaderboard: 1.00 🎯**

## Project Structure

```

/notebooks          # Jupyter notebooks for training and inference demos
/data               # Dataset storage (downloaded via script)
/docs               # Documentation and architecture diagrams
README.md           # This file
requirements.txt    # Python dependencies
download.sh         # Data and pre-trained model download script
metrics.json        # Evaluation metrics summary
/src

```

---

## Setup & Installation

1. Clone this repository:

```bash
git clone https://github.com/yashkc2025/soil_classification_annam
cd soil_classification_annam
cd part-1
```

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Download data and optionally a pre-trained model:

```bash
./data/download.sh
```

> **Note:** This script requires the Kaggle CLI and your Kaggle API token (`kaggle.json`) to be set up.
> For instructions, see: [https://www.kaggle.com/docs/api](https://www.kaggle.com/docs/api)

---

## Usage

### Training

Run the training notebook:

```
/notebooks/training.ipynb
```

This notebook loads the data from `./data/soil-classification/train.csv`, trains the model, and saves checkpoints.

---

### Inference

Use the inference notebook to load the trained model and make predictions:

```
/notebooks/inference.ipynb
```

---

## Model & Metrics

- **Model architecture:** ResNet50 finetuned on train dataset
- **Performance on validation data:**

  - Leaderboard F1 Score: 1.00

- **Converged at epoch:** 4

See `metrics.json` for full details.

---

## Notes

- The project uses relative paths for data loading, making it easy to run locally or on other platforms.
- The `download.sh` script automates dataset download and extraction from Kaggle.
- You can skip the pre-trained model download in the script if you prefer to train from scratch.
