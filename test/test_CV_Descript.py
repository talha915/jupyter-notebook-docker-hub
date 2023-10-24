import nbimporter
import pandas as pd
import sys
import os

# Define the notebook path relative to the test file
from notebook.CV_Descript import show_all_data  # Import the function from your Jupyter Notebook

# Define a test function
def test_show_all_data():
    # Read the CSV file and call the function
    data = pd.read_csv('../app/data/jobdescript.csv')  # Make sure to import pandas
    df = show_all_data(data)

    # Check if df is a DataFrame
    assert isinstance(df, pd.DataFrame), "Expected a DataFrame"

# Run the test with Pytest
if __name__ == '__main__':
    import pytest
    pytest.main([__file__])
