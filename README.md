
---

# Data Science Project using TensorFlow and Docker

## Overview

This project utilizes TensorFlow for data science operations and is containerized using Docker to ensure reproducibility and portability.

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- (Optional) [WSL 2](https://docs.microsoft.com/en-us/windows/wsl/install) for Windows users


### 1. Build the Docker Image

Using Docker Compose:

```bash
docker-compose build
```

### 2. Start the Project

To start the Jupyter Notebook within the Docker container:

```bash
docker-compose up
```

Open a browser and navigate to `http://localhost:8888` to access Jupyter Notebook.

### 3. Stop the Project

To stop the services:

```bash
docker-compose down
```

## Features

- TensorFlow integration for advanced machine learning tasks.
- Containerized environment ensuring consistency across all platforms.
- Jupyter Notebook for interactive data science work.

## Contribution

Contributions are welcome! Please fork the repository and open a pull request with your changes, or open an issue for feedback and suggestions.

## License

[MIT License](LICENSE.md)

---