import tensorflow as tf
import numpy as np
from collections import Counter
from utils import load_and_preprocess_data

model = tf.keras.models.load_model('models/waste_classifier_model.h5')

class_labels = ['plastic', 'e-waste', 'bio waste', 'paper']  # Remove 'unlabeled' class

labeled_data_dir = "D:\\Termworks\\Sem3 Termwork\\Python\\1)waste_classifier\\data\\dataset\\labeled"
unlabeled_data_dir = "D:\\Termworks\\Sem3 Termwork\\Python\\1)waste_classifier\\data\\dataset\\unlabeled"

labeled_images, _ = load_and_preprocess_data(labeled_data_dir)
unlabeled_images, _ = load_and_preprocess_data(unlabeled_data_dir)

all_images = np.concatenate([labeled_images, unlabeled_images])

predictions = model.predict(all_images)

predicted_classes = np.argmax(predictions, axis=1)

counts = Counter(predicted_classes)

for class_index, count in counts.items():
    print(f"{class_labels[class_index]}: {count} images")
