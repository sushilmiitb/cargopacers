# Cargopacers

Cargopacers, later renamed to Cargobolt was a 5 member team startup in logistic sector. It was a platform for truck booking. This repository contains following features
* Registration and Login
* Truck booking
* Order processing and fulfilment
* Static website for company info

## Technologies Used

* Programming language: Java
* Framework: Spring Hibernate
* UI Framework: Bootstrap

## Getting Started

### Prerequisites

Maven - For project management

Tomcat server - ```https://www.tecmint.com/install-apache-tomcat-in-centos/```

* install maven 2+ ```sudo apt-get install maven```
* install java 6+
* install git
* install mysql 5.5+ ```sudo apt-get install mysql-server```
* install eclipse jee
* [install tomcat 7+](https://www.tecmint.com/install-apache-tomcat-in-centos/)

### Running instruction

1. Checkout project using 
```git clone https://{username}@bitbucket.org/cargopacers/cargopacers.git```

2. Create new schema in mysql
```create schema cargopacers;```

3. Modify user.properties for your environment

4. Modify db.properties to change username/password for your mysql (don't commit)

5. Build project
```mvn clean package```

6. Code will get deployed to your tomcat webapps. [access on browser](http://localhost:8080/cargo/)

## License

This project is licensed under the MIT License

## Authors
* Sushil Kumar - [Github](https://github.com/sushilmiitb), [Linkedin](https://in.linkedin.com/in/sushilkm)
* Pawan Kanodia
* pks150
