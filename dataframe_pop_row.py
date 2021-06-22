#this function returns a dataframe after removing the row of a given index from a given dataframe
import pandas as pd
import numpy as np
# Example dataframe for testing
# df = pd.DataFrame({'col1': [1, 2, 3], 'col2': [3, 4, 5], 'col3': [5, 6, 7]})

def dataframe_pop(df, idx = 0):
    arr_size = df.shape[0]
    arr  = np.ones(arr_size, dtype=bool)
    arr[idx] = False
    popped_row = df[~arr]
    result = df[arr]
    return (popped_row, result)

# df.shape
print(dataframe_pop(df, 2))
