# Predicting Survival Time for Colorectal and Esophageal Cancer Patients
Welcome to the repository for Predicting Survival Time for Colorectal and Esophageal Cancer Patients! My name is **Adinda Ayu Lestari**, you can call me **Dinda**. This project implements a Support Vector Machine (SVM) model to classify whether a person diagnosed with colorectal or esophageal cancer will survive for a period **less than the average survival time** or **more than the average survival time**. The goal is to predict whether a person is expected to die **soon** or **later** based on the available dataset.
## Project Background
This code was developed as part of my college essay in 2023. It uses SVM to classify patients' outcomes based on their survival time after being diagnosed with either colorectal or esophageal cancer.
## Dataset
The dataset used for this project was obtained from [Mendeley Data](https://data.mendeley.com/datasets/vvzw3wkx93/3). The original dataset does not contain a class column, which I manually created for the purposes of this analysis:

- **Class Column**: The class column was generated to categorize each patient's survival time relative to the average survival time.
  - `0`: Indicates that a patient survived **more than** the average time.
  - `1`: Indicates that a patient survived **less than** the average time.
## Main Features
- **Support Vector Machine (SVM) Classification**: Uses an SVM model to classify cancer survival outcomes.
- **Custom Feature Engineering**: The average survival time was calculated, and a new column was added to label patient outcomes based on this average.
- **Binary Classification**: The model predicts one of two classes: `0` (longer survival) or `1` (shorter survival).
- **SMOTE for Balancing**: Synthetic Minority Over-sampling Technique (SMOTE) was used to handle class imbalance in the dataset.
- **K-Fold Cross Validation**: K-fold cross-validation was performed with `k` ranging from 2 to 10 to evaluate model robustness.
- **Model Performance Metrics**: The model's performance was measured using precision, recall, F1-score, and accuracy for each of the K-fold cross-validation runs.
## How to Use
1. Clone this repository:
   ```sh
   git clone https://github.com/dindaexoxo/colorectal-and-esophageal-cancer-death-prediction.git
   ```
2. Install the required dependencies:
   ```sh
   pip install -r requirements.txt
   ```
3. Run the code:
   ```sh
   jupyter notebook SVM with SMOTE(kolorektal).ipynb
   jupyter notebook SVM with SMOTE(esofagus).ipynb
   
## Prerequisites
- Python 3.8+
- Required libraries: `scikit-learn`, `pandas`, `numpy`, etc. Make sure to install all dependencies listed in the `requirements.txt` file.

## License
This project is licensed under the MIT License, allowing you to freely use and modify the code as long as proper credit is given.

## Future Improvements
- **Feature Selection**: More advanced feature selection techniques can be implemented to improve the accuracy of the model.
- **Model Tuning**: Tuning SVM hyperparameters could yield better predictions.

Feel free to contribute or suggest improvements by opening an issue or submitting a pull request.

## Contact
If you have questions regarding this project, feel free to contact me via GitHub.
