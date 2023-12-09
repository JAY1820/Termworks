import os
import numpy as np
from PIL import Image

def load_and_preprocess_data(data_dir, img_size=(224, 224)):
    image_list = os.listdir(data_dir)
    num_images = len(image_list)
    images = []
    
    for img_file in image_list:
        img_path = os.path.join(data_dir, img_file)
        img = Image.open(img_path)
        img = img.resize(img_size)
        img = np.array(img) / 255.0  
        images.append(img)

    return np.array(images), None
