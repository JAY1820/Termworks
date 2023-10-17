import cv2
import numpy as np
import os

def load_and_preprocess_data(data_dir):
    images = []
    labels = []
    
    categories = os.listdir(data_dir)
    
    for category_id, category in enumerate(categories):
        category_dir = os.path.join(data_dir, category)
        for img_name in os.listdir(category_dir):
            img_path = os.path.join(category_dir, img_name)
            img = cv2.imread(img_path)
            img = cv2.resize(img, (64, 64))
            img = img / 255.0  # Normalize pixel values
            images.append(img)
            labels.append(category_id)
    
    return np.array(images), np.array(labels)
