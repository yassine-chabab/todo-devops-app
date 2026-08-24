# Projet DevOps & CI/CD : Déploiement Automatisé d'une Application Web de Gestion de Tâches

**Université Hassan II de Casablanca — Faculté des Sciences Aïn Chock (FSAC)**  
*Département Mathématiques & Informatique*  
**Module :** DevOps et Intégration Continue  


## Description du Projet

Ce projet consiste à mettre en place une chaîne d'approvisionnement et de déploiement entièrement automatisée (CI/CD) pour une application Web de gestion de tâches (TODO List minimaliste). 

L'architecture s'appuie sur la philosophie DevOps en intégrant :
- **Infrastructure as Code (IaC)** avec Terraform et Ansible.
- **Conteneurisation et Orchestration** avec Docker et Kubernetes.
- **Livraison Continue (CI/CD)** automatisée via un pipeline Jenkins.
- **Bonnes pratiques Git** (Stratégie de branches `main` / `dev`).


## Architecture & Arborescence

```text
todo-devops-app/
├── app/                        # Application Web Node.js
│   ├── package.json            # Dépendances Node.js
│   ├── server.js               # Code source de l'API Express
│   └── test.js                 # Tests unitaires
├── terraform/                  # Infrastructure as Code
│   └── main.tf                 # Provisionnement des machines virtuelles
├── ansible/                    # Configuration d'infrastructure
│   └── setup.yml               # Playbook d'installation des paquets
├── k8s/                        # Manifests Kubernetes
│   ├── secret.yaml             # Identifiants sécurisés PostgreSQL
│   ├── postgres-pv.yaml        # Persistence des données (PV / PVC)
│   ├── postgres.yaml           # Deployment & Service PostgreSQL
│   ├── app-deployment.yaml     # Deployment de l'Application Web
│   └── app-service.yaml        # Service d'exposition NodePort
├── Dockerfile                  # Configuration de l'image Docker
├── Jenkinsfile                 # Pipeline CI/CD automatisé
├── .gitignore                  # Exclusion des fichiers inutiles
└── README.md                   # Documentation du projet