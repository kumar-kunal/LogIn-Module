## User Authentication Module
        This is simple prototype of login module.
        It support user-validation from database(Mysql) using JDBC.
        Session Management is also implemented in it, so that people can not access restricted area directly using url.
  
### CONTENT
- [Dependency]()
- [Installation](#installation)
- [Usage](#usage)
    - [Getting Started](getting-started)
    - [Working with Client-Side First](#working-with-client-Side)
    - [Working With Server](#working-with-server-side)
- [More]()
## Dependency
    Add below code in your pom.xml    
``` xml
        <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>5.1.6</version>
</dependency>
```
For newest version go to [Maven](https://mvnrepository.com/artifact/mysql/mysql-connector-java)

## Installation
    To install it,Simply grab and Run it in Netbeans.
## Usage
- ### Getting Started
        Create a new Java-Web Project in Netbeans with Your Favourite name.
- ### Working with Client-Side
        In web folder of your project, You have index.jsp.This Folder will contain all of your front-end pages.
        Design all the pages and store here.
- ### Working with Server-side
        Create all servelet files ,You need. 
        eg. I have here 
- Login.java

        For User Authentication
- Logout.java

        To invalidate session of user
- Dao.java 

        To connect with Database
