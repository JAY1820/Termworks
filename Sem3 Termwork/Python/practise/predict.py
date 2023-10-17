import cv2
import numpy as np
import joblib

def preprocess_image(image_path):
    img = cv2.imread(image_path)
    img = cv2.resize(img, (64, 64))  # Added missing closing parenthesis
    img = img / 255.0  # Normalize pixel values
    return img.reshape(1, -1)

# Load the classifier
classifier = joblib.load('waste_classifier.pkl')

# Preprocess a new image and make a prediction
image_path = 'D:\\Termworks\\Sem3 Termwork\\Extra\\py2\\dataset\\e_waste\\img1.jpg'
image = preprocess_image(image_path)
prediction = classifier.predict(image)

print("Prediction:", prediction)
