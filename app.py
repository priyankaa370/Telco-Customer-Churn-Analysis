from flask import Flask, request, render_template
import pickle
import pandas as pd

# Load the saved pipeline (model + preprocessing)
with open('model.pkl', 'rb') as f:
    model = pickle.load(f)

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/predict', methods=['POST'])
def predict():
    try:
        # Collect form data as strings
        tenure = request.form['tenure']
        monthly_charges = request.form['MonthlyCharges']
        total_charges = request.form['TotalCharges']
        contract = request.form['Contract']
        internet = request.form['InternetService']
        payment = request.form['PaymentMethod']

        # Create input DataFrame for model
        input_data = pd.DataFrame([{
            'tenure': float(tenure),
            'MonthlyCharges': float(monthly_charges),
            'TotalCharges': float(total_charges),
            'Contract': contract,
            'InternetService': internet,
            'PaymentMethod': payment
        }])

        # Make prediction
        prediction = model.predict(input_data)
        result = '🚨 Customer is likely to churn.' if prediction[0] == 1 else '✅ Customer is not likely to churn.'

        return render_template(
            'index.html',
            prediction_text=result,
            input_data=input_data.to_dict(orient='records')[0],
            form_values={
                'tenure': tenure,
                'MonthlyCharges': monthly_charges,
                'TotalCharges': total_charges,
                'Contract': contract,
                'InternetService': internet,
                'PaymentMethod': payment
            }
        )

    except Exception as e:
        return render_template('index.html', prediction_text=f"❌ Error: {str(e)}")

if __name__ == '__main__':
    app.run(debug=True)
