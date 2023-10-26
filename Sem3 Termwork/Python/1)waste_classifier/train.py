from utils import load_and_preprocess_data
from sklearn.model_selection import train_test_split
import tensorflow as tf

labeled_data_dir = "D:\\Termworks\\Sem3 Termwork\\Python\\1)waste_classifier\\data\\dataset\\labeled"

images, labels = load_and_preprocess_data(labeled_data_dir)

train_images, val_images, train_labels, val_labels = train_test_split(images, labels, test_size=0.2, random_state=42)

base_model = tf.keras.applications.VGG16(input_shape=(224, 224, 3),
                                         include_top=False,
                                         weights='imagenet')

# Fine-tuning - unfreeze the top layers of VGG16
base_model.trainable = True

fine_tune_at = len(base_model.layers) // 2

for layer in base_model.layers[:fine_tune_at]:
    layer.trainable = False

model = tf.keras.Sequential([
    base_model,
    tf.keras.layers.GlobalAveragePooling2D(),
    tf.keras.layers.Dense(4, activation='softmax')  # 4 output classes (e-waste, bio waste, paper, plastic)
])

model.compile(optimizer=tf.keras.optimizers.Adam(1e-5),
              loss='categorical_crossentropy',
              metrics=['accuracy'])

#  number of epochs for fine-tuning is increase than give a proper accuracy
model.fit(train_images, train_labels,
          validation_data=(val_images, val_labels),
          epochs=30)  

model.save('models/waste_classifier_model.h5')
