# 🧠 GraphTM-Scalability: DNA Sequence Classification with Graph Tsetlin Machines

This project leverages Graph Tsetlin Machines (GTM) to classify DNA sequences from viruses. It includes an automated Python environment setup using `npm` scripts and a preprocessed dataset for training and evaluation.

---

## 📦 Prerequisites

Ensure the following are installed on your system:

- [Python 3.7+](https://www.python.org/downloads/)
- [pip](https://pip.pypa.io/en/stable/)
- [Node.js and npm](https://nodejs.org/)
- `unzip` utility (for dataset extraction)

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
```

### 2. Set Up the Environment

Run the setup script via npm:

```bash
npm run setup-python
```

This will:
- Create a Python virtual environment (`venv/`)
- Activate the environment within the script
- Install Python dependencies listed in `requirements.txt`
- Extract the dataset to `data/Sequence_Dataset.csv`

### 3. Run the Application

```bash
npm start
```

Or manually:

```bash
python src/main.py
```

---

## 🗂 Project Structure

```
.
├── src/
│   ├── main.py             # Main script for training & evaluation
│   └── utils.py            # Utility functions
├── data/
│   └── Sequence_Dataset.csv.zip  # Compressed dataset file
├── venv/                   # Virtual environment (not version controlled)
├── requirements.txt        # Python dependencies
├── package.json            # npm scripts for setup & execution
├── setup-python.sh         # Shell script for environment setup
├── .gitignore              # Files to exclude from version control
└── README.md               # Project documentation
```

---

## ⚙️ Manual Virtual Environment Activation

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

## 🧪 Model Training & Evaluation

The project uses [Graph Tsetlin Machines (GTM)](https://github.com/cair/Graph-Tsetlin-Machine) to classify DNA sequences. Training and evaluation are performed on a preprocessed, balanced dataset.

### 📈 Benchmark Results

| Model         | Train Accuracy (%) | Test Accuracy (%) | Training Time (s) |
|---------------|---------------|--------------|----------|
| GraphTM-1     | 60.74         | 59.81        | 62.47    |
| GraphTM-2     | 95.17         | 95.14        | 84.37    |
| BiLSTM        | 94.43         | 92.69        | 50.39    |
| LSTM          | 88.70         | 87.29        | 26.02    |
| GRU           | 94.68         | 94.05        | 25.47    |
| BiLSTM-CNN    | 96.77         | 95.44        | 32.65    |
| GCN           | 96.64         | 96.35        | 226.36   |

*Note: These results are based on a fixed dataset and hardware; actual performance may vary.*

---

## 🧬 Dataset Details

- The dataset file `Sequence_Dataset.csv.zip` should be placed in the project root.
- After running `setup-python`, it will be extracted to the `data/` folder.
- Contains DNA sequences from five viruses:
  - SARS-CoV-2
  - Influenza virus
  - Dengue virus
  - Zika virus
  - Rotavirus

The dataset is preprocessed and balanced using random sampling.

---

## 🔧 Configuration & Hyperparameters

Model parameters can be adjusted in the `Args` class inside `main.py`:

```python
class Args:
    number_of_classes = 5
    max_sequence_length = 500
    hypervector_size = 512
    message_size = 512
    number_of_state_bits = 8
    ...
```

You can also tweak model-specific parameters like `T`, `s`, `depth`, and clause count directly in `main.py`.

---

## 🤝 Contributing

We welcome contributions! Feel free to fork the repository, open pull requests, or file issues.

- Follow [PEP 8](https://peps.python.org/pep-0008/) for code style
- Include docstrings and comments where helpful
- Provide tests if possible

---

## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.
