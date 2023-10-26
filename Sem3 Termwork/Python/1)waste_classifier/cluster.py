from sklearn.cluster import KMeans
from keras.applications.vgg16 import VGG16
from keras.preprocessing import image
from keras.applications.vgg16 import preprocess_input
import numpy as np
import os
from config import UNLABELED_DATA_DIR

# This function loads and preprocesses images from a directory.
def load_and_preprocess_images(data_dir, img_size=(224, 224)):
    image_list = os.listdir(data_dir)
    images = [] 
    for img_name in image_list:
        # Skip non-image files.
        if not img_name.lower().endswith(('.png', '.jpg', '.jpeg')):
            continue
        img_path = os.path.join(data_dir, img_name)
        try:
            # Load the image and preprocess it.
            img = image.load_img(img_path, target_size=img_size)
            x = image.img_to_array(img)
            x = np.expand_dims(x, axis=0)
            x = preprocess_input(x)
            images.append(x)
        except Exception as e:
            print(f"Can't open {img_name}. Error: {e}")
    # If no valid images are found, return None.
    if images:
        return np.vstack(images)
    else:
        return None

# Load the VGG16 model with pre-trained ImageNet weights.
model = VGG16(weights='imagenet', include_top=False)

# Specify the directory containing your unlabeled images.
images = load_and_preprocess_images(UNLABELED_DATA_DIR)

if images is None:
    print("No valid images found.")
else:
    # Use the VGG16 model to extract features from the images.
    features = model.predict(images)
    features = features.reshape(features.shape[0], -1)

    # Cluster the features using KMeans.
    kmeans = KMeans(n_clusters=4, random_state=0).fit(features)

    # Print the cluster labels for each image.
    print(kmeans.labels_)
