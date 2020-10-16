# Setup Instructions

#### Project Server has the following Technical Data
- CentOS Linux release 8.2.2004
- 2GB RAM
- Processor 1 Core 3,6 GHz

# Initial Setup

## 1. Clone Frontend Repository

[https://github.com/Gruppe-NoSQL/mongodb-quiz-frontend](https://github.com/Gruppe-NoSQL/mongodb-quiz-frontend)

```
    git clone https://github.com/Gruppe-NoSQL/mongodb-quiz-frontend
```

## 2. Clone Backend Repository

[https://github.com/Gruppe-NoSQL/mongodb-quiz-backend](https://github.com/Gruppe-NoSQL/mongodb-quiz-backend)

```
    git clone https://github.com/Gruppe-NoSQL/mongodb-quiz-backend
```

## 3. Clone Hosting Repository

[https://github.com/Gruppe-NoSQL/nosql-quiz-hosting.git](https://github.com/Gruppe-NoSQL/nosql-quiz-hosting.git)

```
    git clone https://github.com/Gruppe-NoSQL/nosql-quiz-hosting.git
```

## 4. Create process.env

```
    cd nosql-quiz-backend
    touch process.evn
    echo "DATABASE_URL=[YOUR_MONGODB_LINK]" > process.env
```

## 5. Copy Contents of Hosting Repository to main folder and modify access rights for acme.json and sh scripts

```
    cd nosql-quiz-hosting
    /bin/cp -a . ..
    cd ~
    chmod 600 acme.json
    chmod +x startConatiners.sh
    chmod +x stopContainers.sh
    ./startContainers.sh
```

# Stop Containers

## 1. Execute Stop Container Script

```
    ./stopContainers.sh
```

# Update Repositorys

```
    ./stopContainers.sh
```

## 1. Stop Containers
```
    ./stopContainers.sh
```

# Notes for Container-Restart

- Remember to always set chmod 600 for acme.json, when you copied the newest version of hosting scripts
- Remember to create process.env if you deleted backend repository