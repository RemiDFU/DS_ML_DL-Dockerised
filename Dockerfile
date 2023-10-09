
# Utilisez une image de base. TensorFlow fournit des images officielles que vous pouvez utiliser
FROM tensorflow/tensorflow:latest-gpu-jupyter
FROM python:3.8-slim

# Mettez à jour les packages et installez les dépendances si nécessaire
RUN apt-get update && apt-get install -y \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copiez les fichiers nécessaires de votre projet dans le container
COPY . /workspace
WORKDIR /workspace

# Si vous avez des dépendances supplémentaires définies dans un fichier requirements.txt, installez-les
RUN pip install --no-cache-dir -r requirements.txt

# Commande par défaut lors du démarrage du container
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
