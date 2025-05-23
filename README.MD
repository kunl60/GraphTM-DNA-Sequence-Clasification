# My Python Project

This is a Python project structured with virtual environment support and automated setup using npm scripts.

---

## 📦 Prerequisites

Make sure the following are installed on your system:

- [Python 3.7+](https://www.python.org/downloads/)
- [pip](https://pip.pypa.io/en/stable/)
- [Node.js and npm](https://nodejs.org/)

---

## 🚀 Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

2. **Run the setup script via npm:**

   ```bash
   npm run setup-python
   ```

   This will:
   - Create a virtual environment (if it doesn’t exist)
   - Activate it temporarily within the script
   - Install all Python dependencies listed in `requirements.txt`

3. **Run the application:**

   ```bash
   python src/main.py
   ```

---

## 🗂 Project Structure

```
.
├── src/
│   ├── main.py           # Main application script
│   └── utils.py          # Utility functions
├── data/
│   └── sequence.csv      # Sample data
├── venv/                 # Virtual environment (excluded from version control)
├── requirements.txt      # Python dependencies
├── package.json          # npm scripts to manage setup
├── setup-python.sh       # Shell script for environment setup
├── .gitignore            # Git ignore rules
└── README.md             # This file
```

---

## 🛠 Virtual Environment

If you prefer to activate the virtual environment manually:

- On **macOS/Linux**:
  ```bash
  source venv/bin/activate
  ```

- On **Windows**:
  ```bash
  venv\Scripts\activate
  ```

To deactivate:
```bash
deactivate
```

---

## 🧪 Training & Evaluation

This project uses the [Graph Tsetlin Machine (GTM)](https://github.com/cair/Graph-Tsetlin-Machine) to classify DNA sequences from viruses. It includes both training and evaluation stages.

### 📈 Results

| Metric                | GraphTM-1 | GraphTM-2 | BiLSTM | LSTM  | GRU   | BiLSTM-CNN | GCN    |
| --------------------- | --------- | --------- | ------ | ----- | ----- | ---------- | ------ |
| Training Accuracy (%) | 60.74     | 95.17     | 94.43  | 88.70 | 94.68 | 96.77      | 96.64  |
| Testing Accuracy (%)  | 59.81     | 95.14     | 92.69  | 87.29 | 94.05 | 95.44      | 96.35  |
| Training Time (s)     | 62.47     | 84.37     | 50.39  | 26.02 | 25.47 | 32.65      | 226.36 |



### 🧪 Run Training

Run the following command to train and evaluate the model:

```bash
python src/main.py
```

Training and evaluation will be performed on the balanced and preprocessed dataset using the GTM classifier.

---

## 🧬 Dataset

The dataset should be placed in the `data/` directory and named `Sequence_Dataset.csv`.

This dataset contains DNA sequences for five viruses:

- SARS-CoV-2
- Influenza virus
- Dengue virus
- Zika virus
- Rotavirus

The script filters valid sequences and balances the dataset using Random sampling.

---

## 🔧 Configuration & Hyperparameters

You can modify model parameters via the `Args` class inside `main.py`:

```python
class Args:
    number_of_classes = 5
    max_sequence_length = 500
    hypervector_size = 512
    message_size = 512
    number_of_state_bits = 8
    ...
```

Model-specific hyperparameters such as `T`, `s`, `depth`, and number of clauses can also be updated directly in `main.py`.

---

## 🤝 Contributing

We welcome contributions! Feel free to fork the repo, open pull requests, or file issues. Ensure you follow standard Python style (PEP 8) and document your code.

---

## 📜 License

This project is licensed under the MIT License.
