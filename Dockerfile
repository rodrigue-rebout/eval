# Étape 1 : Utiliser une image Python comme base
FROM python:3.10.12

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Copier les fichiers de requirements et le code de l'application
COPY requirements.txt ./
COPY . .

# Étape 4 : Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Étape 5 : Exposer le port sur lequel l'application va tourner
EXPOSE 8000

# Étape 6 : Lancer l'application avec Uvicorn
CMD ["uvicorn", "groqapi:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
