# 🗂️ Week 4 – Environments & Docker

Hands-on practice with **environment management** and **containerization** for reproducible MLOps workflows.  
This week focused on building consistent Python environments, creating Docker images, and ensuring reproducible results across systems.

---

## 📘 Overview

This repository documents my **Week 4 MLOps practical** exercise.  
The goal was to:

* Create isolated environments using `venv` and `conda`
* Export dependencies with `requirements.txt` and `environment.yml`
* Build and run reproducible containers with `Dockerfile`
* Understand how to version and share environments for collaborative projects
* Document all executed commands and outputs in `terminal_log.txt`

🔗 **Main Repo:** [MLOps-Practical-4](https://github.com/bettybluee/MLOps-Practical-4)

---

## ⚙️ Quick Start

You can reproduce my Week 4 workflow using the following commands:

```bash
# 1️⃣ Clone the repository
git clone https://github.com/bettybluee/MLOps-Practical-4.git
cd MLOps-Practical-4

# 2️⃣ Create environment
conda env create -f environment.yml
conda activate mlops-week4

# 3️⃣ Build Docker image
docker build -t mlops-week4 .

# 4️⃣ Run container
docker run --rm mlops-week4
````

✅ **Expected Output:**

* Environment created and activated without dependency conflicts
* Docker image built successfully
* Container runs Python script and exits cleanly

  ```
  Running experiment...
  Numpy version: 1.26.0
  Computation: 6
  ```

---

## 🗂️ Project Structure

```
MLOps-Practical-4/
├── src/
│   ├── __init__.py         # Package initialization
│   └── processor.py        # Simple processing script for testing
├── tests/
│   ├── test_processor.py   # Tests for processor.py
│   └── test_smoke.py       # Basic smoke tests
├── .gitignore              # Files/folders to ignore in Git
├── LICENSE                 # License information
├── Makefile                # Commands for testing and cleaning cache
├── README.md               # Project description and usage
├── environment.yml         # Conda environment configuration
├── pyproject.toml          # Python project settings
├── pytest.ini              # pytest configuration
├── requirements.txt        # Python package dependencies
├── Dockerfile              # Builds reproducible container
└── terminal_log.txt        # Logs of all terminal commands and outputs
```

---

## 🧩 Example Artifacts

* [environment.yml](https://github.com/bettybluee/MLOps-Practical-4/blob/main/environment.yml) — defines Conda environment
* [Dockerfile](https://github.com/bettybluee/MLOps-Practical-4/blob/main/Dockerfile) — builds reproducible container
* [requirements.txt](https://github.com/bettybluee/MLOps-Practical-4/blob/main/requirements.txt) — tracks Python dependencies
* [terminal_log.txt](https://github.com/bettybluee/MLOps-Practical-4/blob/main/terminal_log.txt) — step-by-step commands and outputs

---

## 🛠️ Tech Stack

* **Programming Language:** Python 3
* **Environment Tools:** Conda, venv
* **Containerization:** Docker
* **Version Control:** Git & GitHub
* **Editor:** VS Code
* **OS Environment:** macOS / WSL

---

## 🧠 Key Learnings

* Understood how **virtual environments** ensure reproducible experiments
* Learned to build and run **Docker containers** for consistent runtime setups
* Practiced exporting dependencies with both `requirements.txt` and `environment.yml`
* Improved project portability through **Dockerfile** and **environment versioning**
* Reinforced MLOps principles of **reproducibility and automation**

---

## 🤖 GenAI Support

Used GenAI (ChatGPT) to:

* Learn how to create and export environments using Conda and venv
* Debug common Docker build errors and fix dependency mismatches
* Verify Docker CMD vs ENTRYPOINT usage best practices

**Risk Control:** All commands were manually verified before execution; no destructive or system-level operations were applied.

---

## 💬 Reflection

This week reinforced the importance of **environment consistency** in MLOps workflows.
By using Docker and Conda together, I ensured that experiments can be reproduced across any system without dependency issues.
Debugging Docker builds and refining environment files also strengthened my understanding of reproducible development.

Next steps:

* Experiment with **multi-stage Docker builds** for smaller image sizes
* Automate Docker builds with GitHub Actions
* Add `Makefile` targets for Docker (`make build`, `make run`)

---

## 👩‍💻 Author

**Betty Kim**
📚 Tilburg University – MSc Data Science (Pre-master)  
🗓️ Week 4: Environments & Docker  
🔗 [GitHub Profile](https://github.com/bettybluee)
