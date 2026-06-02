#!/bin/bash

# Create directories
mkdir -p models/animals/1/variables
mkdir -p models/animals/2/variables
mkdir -p models/animals/3/variables

# Model 1 - Balanced
curl -L https://storage.googleapis.com/mlep-public/course_1/week2/model-balanced/saved_model.pb \
    -o models/animals/1/saved_model.pb

curl -L https://storage.googleapis.com/mlep-public/course_1/week2/model-balanced/variables/variables.data-00000-of-00001 \
    -o models/animals/1/variables/variables.data-00000-of-00001

curl -L https://storage.googleapis.com/mlep-public/course_1/week2/model-balanced/variables/variables.index \
    -o models/animals/1/variables/variables.index

# Model 2 - Imbalanced
curl -L https://storage.googleapis.com/mlep-public/course_1/week2/model-imbalanced/saved_model.pb \
    -o models/animals/2/saved_model.pb

curl -L https://storage.googleapis.com/mlep-public/course_1/week2/model-imbalanced/variables/variables.data-00000-of-00001 \
    -o models/animals/2/variables/variables.data-00000-of-00001

curl -L https://storage.googleapis.com/mlep-public/course_1/week2/model-imbalanced/variables/variables.index \
    -o models/animals/2/variables/variables.index

# Model 3 - Augmented
curl -L https://storage.googleapis.com/mlep-public/course_1/week2/model-augmented/saved_model.pb \
    -o models/animals/3/saved_model.pb

curl -L https://storage.googleapis.com/mlep-public/course_1/week2/model-augmented/variables/variables.data-00000-of-00001 \
    -o models/animals/3/variables/variables.data-00000-of-00001

curl -L https://storage.googleapis.com/mlep-public/course_1/week2/model-augmented/variables/variables.index \
    -o models/animals/3/variables/variables.index

echo "All models downloaded successfully!"