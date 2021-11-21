
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' # suppress tensorflow warnings

import tensorflow as tf

# Import TensorFlow Datasets
import tensorflow_datasets as tfds

# Helper libraries
import math
import numpy as np
import matplotlib.pyplot as plt


dataset, metadata = tfds.load('fashion_mnist', as_supervised=True, with_info=True)
train_dataset, test_dataset = dataset['train'], dataset['test']


print(len(list(train_dataset)))




split0, split1, split2, split3 = tfds.even_splits('train', n=4)

train_dataset = tfds.load('fashion_mnist', split=split0)

mnist_example, = train_dataset.take(1)
image, label = mnist_example["image"], mnist_example["label"]

print(len(list(train_dataset)))



train_dataset = tfds.load('fashion_mnist', split=split1)

mnist_example, = train_dataset.take(1)
image, label = mnist_example["image"], mnist_example["label"]



print(len(list(train_dataset)))