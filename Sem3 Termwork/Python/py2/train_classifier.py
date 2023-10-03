from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.preprocessing import StandardScaler
import joblib
from load_data import load_and_preprocess_data
import numpy as np


# Load and preprocess the data
data_dir = 'D:\\Termworks\\Sem3 Termwork\\Extra\\py2\\dataset'
images, labels = load_and_preprocess_data(data_dir)

# Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(images, labels, test_size=0.2, random_state=42)

# Standardize the data
scaler = StandardScaler()
X_train_flatten = scaler.fit_transform(X_train.reshape(X_train.shape[0], -1))
X_test_flatten = scaler.transform(X_test.reshape(X_test.shape[0], -1))

# Create a Support Vector Machine (SVM) classifier
classifier = SVC(C=1.0, kernel='linear', gamma='auto')

# Fit the classifier
classifier.fit(X_train_flatten, y_train)

# Evaluate the classifier
y_pred = classifier.predict(X_test_flatten)
accuracy = np.mean(y_pred == y_test)
print("Accuracy:", accuracy)

# Save the classifier for future use
joblib.dump(classifier, 'waste_classifier.pkl')
