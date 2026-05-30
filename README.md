Une installation locale n8n pour chercher du financement
-----

## Installation

    ./scripts/deploy.sh

## Détruire mais garder les données

    ./scripts/destroy-but-keep-data.sh

## Détruire tout incluant les données

    ./scripts/destroy-but-keep-data.sh
    docker volume rm n8n_data

## Au premier lancement

* Créer un compte et vous rappeler du mot de passe.
* http://localhost:5678/settings/api
* Créer une clé API avec l'étiquette "import-export"
* Copiez la clé
* Mettez la clé dans un fichier ./.env comme ceci:

    N8N_API_KEY=abc123

Vous n'aurez plus à faire ces étapes tant que vous n'avez pas détruit vos données.

## Gestion de secrets

Dans ./.env, mettez:

    MY_PASSWORD=princess123!

Ensuite

    ./scripts/deploy.sh

Ensuite si votre code a besoin de secret, utilisez:

## Credentials

Demandez à un AI comment créer une authentification Google Cloud vous donnant accès à votre Drive et vos Google Sheets, vous aurez un Client ID et un secret.



Allez au http://localhost:5678/home/credentials

Google service account

partager

polp
