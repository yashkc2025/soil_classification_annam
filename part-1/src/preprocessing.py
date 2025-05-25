"""

Author : Yash Kumar
Team Name : Synfire Chain
Team Members : Yash Kumar, Astitva Agarwal
Leaderboard Rank: 1

"""

from torchvision import transforms

# We have used thse transformations for preprocessing
transform = transforms.Compose([
    transforms.Resize((224, 224)),           # Resize to model's expected input size
    transforms.ToTensor(),                   # Convert to PyTorch Tensor
    transforms.Normalize(mean=[0.485, 0.456, 0.406],  # Normalize to match ImageNet stats
                         std=[0.229, 0.224, 0.225])
])

#-----------------------------------------------------
# This is for grouping and then splitting into train:val

# Path to the CSV file containing image IDs and corresponding soil types
csv_path = "../data/soil_classification-2025/train_labels.csv"

# Load CSV
df_train_labels = pd.read_csv(csv_path)

all_tasks = []

# Group and split
for soil_type, group in df_train_labels.groupby('soil_type'):
    image_ids = group['image_id'].tolist()
    random.shuffle(image_ids)
    
    # Compute index at which to split for training and validation
    split_index = int(len(image_ids) * train_ratio)
    
    for split_name, split_imgs in zip(['train', 'val'], [image_ids[:split_index], image_ids[split_index:]]):
        for img_id in split_imgs:
            src = os.path.join(image_directory, img_id)
            dst = os.path.join(output_dir, split_name, soil_type, img_id)
            all_tasks.append((src, dst))

# Copy with progress bar
for src, dst in tqdm(all_tasks, desc="Copying images"):
    os.makedirs(os.path.dirname(dst), exist_ok=True)
    shutil.copyfile(src, dst)

