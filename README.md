
# 💼 Freelance Platform – Spring Boot Application

A containerized web application for freelance project management, developed using Spring Boot and deployed on a local Kubernetes cluster via Minikube. This platform enables clients to post jobs and freelancers to respond, with secure authentication, a responsive UI, and MySQL database integration.

![Java](https://img.shields.io/badge/Java-17-blue)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-3.x-green)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)

---

## 🚀 Features

- 🔐 User Authentication via Spring Security
- 👤 Role-based access (Client / Freelancer)
- 📄 JSP-based dynamic web pages
- 📦 Containerization with Docker & Docker Compose
- ☸️ Kubernetes deployment via Minikube
- 🛠 Modular architecture using MVC pattern

---

## 📁 Project Structure

```

freelanceApp/
├── src/
│   ├── main/
│   │   ├── java/tn/essat/
│   │   │   ├── config/        # Spring configurations
│   │   │   ├── controller/    # REST controllers
│   │   │   ├── dao/           # Data Access Objects (repositories)
│   │   │   ├── model/         # JPA entities
│   │   │   ├── service/       # Business logic layer
│   │   │   └── freelancer/    # Freelancer-related modules
│   │   ├── resources/         # Application properties and static files
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       └── views/
│   │           └── index.jsp
├── target/                    # Compiled classes and packaged application
├── .gitignore
├── pom.xml                    # Maven build configuration
└── README.md

````

---

## ⚙️ Technologies Used

- **Backend Framework**: Spring Boot 3.x
- **Database**: MySQL 8.0
- **Authentication**: Spring Security
- **View Layer**: JSP (Java Server Pages)
- **Containerization**: Docker, Docker Compose
- **Orchestration**: Kubernetes with Minikube
- **Build Tool**: Maven

---

## 🛠 Installation

### 1. Prerequisites

Ensure you have the following installed:

- [Java 17 JDK](https://adoptium.net/)
- [MySQL 8.0+](https://dev.mysql.com/downloads/)
- [Maven 3.8+](https://maven.apache.org/)
- [Docker](https://www.docker.com/)
- [Minikube + kubectl](https://minikube.sigs.k8s.io/docs/start/)

### 2. Database Setup

```sql
CREATE DATABASE freelance_db;
CREATE USER 'freelance_user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON freelance_db.* TO 'freelance_user'@'localhost';
````

### 3. Configuration

Edit the file:
`src/main/resources/application.properties`

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/freelance_db
spring.datasource.username=freelance_user
spring.datasource.password=password
spring.jpa.hibernate.ddl-auto=update
```

---

## 🚀 Running the Application

### 🔧 Build & Run Locally

```bash
mvn clean install
mvn spring-boot:run
```

Access the app at: [http://localhost:8080](http://localhost:8080)

---

## 🐳 Docker Support

### Build Docker Image

```bash
docker build -t freelance-app .
```

### Run with Docker Compose

```bash
docker-compose up --build
```

---

## ☸️ Kubernetes Deployment

Ensure Minikube is running:

```bash
minikube start
kubectl apply -f k8s/
```

*Ensure your `k8s/` directory contains the appropriate `deployment.yaml` and `service.yaml` files.*

---

## 🌐 Access Points

* **Frontend**: `http://localhost:8080`
* **REST APIs**: `http://localhost:8080/api/...`

---

## 📜 License

Distributed under the MIT License. See [`LICENSE`](LICENSE) for more information.

---

## 🙋‍♀️ Author

**Aya Ben Mabrouk**
[LinkedIn Profile](https://www.linkedin.com/in/aya-ben-mabrouk).



