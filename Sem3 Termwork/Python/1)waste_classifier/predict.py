import tensorflow as tf
import numpy as np
from collections import Counter
from utils import load_and_preprocess_data
from test import expected_result
from config import UNLABELED_DATA_DIR, MODEL_PATH

def calculate_total_percentage(counts, total):
    percentages = {}
    for class_index, count in counts.items():
        percentages[class_index] = (count / total) * 100
    return sum(percentages.values())

model = tf.keras.models.load_model('models/waste_classifier_model.h5')
class_labels = ['plastic', 'e-waste', 'bio waste', 'paper']  

# Load and preprocess the images from the unlabeled data directory
images, _ = load_and_preprocess_data(UNLABELED_DATA_DIR)
predictions = model.predict(images)
predicted_classes = np.argmax(predictions, axis=1)
counts = Counter(predicted_classes)

# Print the predicted class counts and percentages
for class_index, count in counts.items():
    print(f"{class_labels[class_index]}: {count} images")

# Compare each prediction with the corresponding expected result
correct_predictions = sum(p == e for p, e in zip(predicted_classes, expected_result))
total_predictions = len(predicted_classes)
accuracy = (correct_predictions / total_predictions) * 100

# Print the accuracy
print(f"Accuracy: {accuracy}%")
