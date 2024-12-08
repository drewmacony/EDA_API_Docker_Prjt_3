import kagglehub
import pandas as pd

# Download latest version
path = kagglehub.dataset_download("chaunguynnghunh/sepsis")

print("Path to dataset files:", path)

data = pd.read_csv(r"data\Paitients_Files_Test.csv")
print(data)