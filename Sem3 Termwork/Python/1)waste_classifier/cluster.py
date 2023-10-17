from sklearn.cluster import KMeans
from keras.applications.vgg16 import VGG16
from keras.preprocessing import image
from keras.applications.vgg16 import preprocess_input
import numpy as np
import os

def load_and_preprocess_images(data_dir, img_size=(224, 224)):
    image_list = os.listdir(data_dir)
    images = []
    
    for img_name in image_list:
        img_path = os.path.join(data_dir, img_name)
        img = image.load_img(img_path, target_size=img_size)
        x = image.img_to_array(img)
        x = np.expand_dims(x, axis=0)
        x = preprocess_input(x)
        images.append(x)

    return np.vstack(images)

model = VGG16(weights='imagenet', include_top=False)

unlabeled_data_dir = "D:\\Termworks\\Sem3 Termwork\\Python\\py\\data\\dataset\\unlabeled"

images = load_and_preprocess_images(unlabeled_data_dir)

features = model.predict(images)

features = features.reshape(features.shape[0], -1)

# Apply KMeans clustering
kmeans = KMeans(n_clusters=4, random_state=0).fit(features)

# Print cluster assignments for each image
print(kmeans.labels_)
