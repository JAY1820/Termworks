import os
import numpy as np
from PIL import Image
from tensorflow.keras.utils import to_categorical
from sklearn.preprocessing import LabelEncoder

def load_and_preprocess_data(data_dir, img_size=(224, 224)):
    image_list = os.listdir(data_dir)
    num_images = len(image_list)
    images = []
    labels = []
    
    for img_file in image_list:
        img_path = os.path.join(data_dir, img_file)
        img = Image.open(img_path)
        img = img.resize(img_size)
        img = np.array(img) / 255.0  # Normalize pixel values
        images.append(img)
        
        # Assumes filenames are in the format 'label_otherinfo.jpg'
        label = img_file.split('_')[0]  
        labels.append(label)

    # Convert labels to one-hot vectors
    label_encoder = LabelEncoder()
    labels = label_encoder.fit_transform(labels)
    labels = to_categorical(labels)

    return np.array(images), labels
