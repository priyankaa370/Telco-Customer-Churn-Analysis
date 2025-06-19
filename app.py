from flask import Flask, request, render_template
import pickle
import pandas as pd

# Load the saved pipeline (preprocessing + model)
with open('model.pkl', 'rb') as file:
    model = pickle.load(file)

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/predict', methods=['POST'])
def predict():
    # Grab form data
    tenure = float(request.form['tenure'])
    monthly_charges = float(request.form['MonthlyCharges'])
    total_charges = float(request.form['TotalCharges'])

    contract = request.form['Contract']
    internet = request.form['InternetService']
    payment = request.form['PaymentMethod']

    # Create DataFrame for the model input
    input_data = pd.DataFrame([{
        'tenure': tenure,
        'MonthlyCharges': monthly_charges,
        'TotalCharges': total_charges,
        'Contract': contract,
        'InternetService': internet,
        'PaymentMethod': payment
    }])

    # Predict using the full pipeline
    prediction = model.predict(input_data)
    result = 'Customer is likely to churn.' if prediction[0] == 1 else 'Customer is not likely to churn.'

    return render_template('index.html', prediction_text=result)

if __name__ == '__main__':
    app.run(debug=True)
