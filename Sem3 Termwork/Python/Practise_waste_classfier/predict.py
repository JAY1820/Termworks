import tensorflow as tf
import numpy as np
from sklearn.metrics import accuracy_score
from utils import load_and_preprocess_data

# Load the trained model
model = tf.keras.models.load_model('models/waste_classifier_model.h5')

# Define the class labels in the order they were used during training
class_labels = ['plastic', 'e-waste', 'bio waste', 'paper']  # Remove 'unlabeled' class

# Directory containing labeled images
labeled_data_dir = "D:\\Termworks\\Sem3 Termwork\\Python\\1)waste_classifier\\data\\dataset\\labeled"

# Load and preprocess labeled images
images, true_labels = load_and_preprocess_data(labeled_data_dir)

# Classify labeled images
predictions = model.predict(images)

# Get the class with the highest probability for each labeled image
predicted_classes = np.argmax(predictions, axis=1)

# If your true labels are one-hot encoded, convert them to label encoded format
if len(true_labels.shape) > 1 and true_labels.shape[1] > 1:
    true_labels = np.argmax(true_labels, axis=1)

# Calculate prediction accuracy for labeled images
accuracy_labeled = accuracy_score(true_labels, predicted_classes)

print(f"Accuracy for images: {accuracy_labeled * 100}%")
