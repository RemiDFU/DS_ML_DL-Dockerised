import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

from imblearn.over_sampling import RandomOverSampler
from sklearn.preprocessing import MinMaxScaler

import tensorflow as tf
import tensorflow_datasets as tfds
import sys

# Mock module with stub
sys.modules['resource'] = lambda: None

de_credit, info = tfds.load('german_credit_numeric', split='train', with_info=True)
de_credit_df = tfds.as_dataframe(de_credit, info)

de_credit_df.head()