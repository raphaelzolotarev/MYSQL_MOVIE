<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/87/Sql_data_base_with_logo.png?20210130181641" alt="Logo" width="100" >
  <h3 align="center">Movie Database</h3>
  <p align="center">
    #1 SQL Project with Intec Brussel   
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#requirements">Requirements</a></li>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#usage">Usage</a></li>
      </ul>
    </li>
    <li><a href="#tasks-done">Tasks done</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project
![image](https://github.com/raphaelzolotarev/MYSQL_MOVIE/assets/145349823/06020ca3-d959-4a4b-8a46-da4f772c6ad5)
This is the first SQL project i made after 1 week of SQL learning at Intec Brussel with the teacher Hilal.

<!-- GETTING STARTED -->
## Getting Started
To get a local copy up and running follow these simple steps.

### Requirements
* <a target="_blank" href="https://dev.mysql.com/downloads/"> <img src="https://img.shields.io/badge/MySQL_Version_8.0_or_higher-005C84?style=for-the-badge&logo=mysql&logoColor=white" /> </a>
* <a target="_blank" href="https://www.jetbrains.com/idea/download"> <img src="https://img.shields.io/badge/IntelliJ_IDEA_Ultimate_Edition-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white" /> </a>
* <a target="_blank" href="https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.4"> <img src="https://img.shields.io/badge/powershell-5391FE?style=for-the-badge&logo=powershell&logoColor=white" /> </a>


### Prerequisites
First, you need to create a new database to avoid impacting your existing ones. To do that, open PowerShell and type the following command lines:
* Start MySQL by logging in with your username and password
  ```sh
  mysql -u username -p
  ```
* Create a new database with the name "moviedb"
  ```sh
  create database moviedb;
  ```
* Grant all access on database to your user with the correct ip
  ```sh
  grant all on moviedb.* to 'username'@'localhost';
  ```
* Reload the user's privileges 
  ```sh
  flush privileges;
  ```
### Installation
1. Open IntelliJ and install all needed MySQL drivers and use only MySQL dialect
2. Click on the database icon right icon -> + sign -> Data source -> choose only MySQL
3. Enter your user, pass and database name then click ok to connect to the database
4. Import the downloaded github zip repository or type the following command in the IntelliJ terminal 
   ```sh
   git clone https://github.com/raphaelzolotarev/MYSQL_MOVIE
   ```
### Usage
1. Go to src -> main -> sql
2. Open the file CreateTables.sql and execute all the queries to create tables in your database
3. Open the file InsertValues.sql and execute all the queries to insert all values in your tables
4. Open Queries.sql and execute each query one by one to see the result of each query
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- TASKS -->
## Tasks done
- [x] Create a new project in IntelliJ
- [x] Create a new database using SSH command line in PowerShell
- [x] Create an admin user for the database using SSH command line in PowerShell
- [x] Establish a database connection in IntelliJ 
- [x] Create tables with SQL code, ensuring optimal memory usage by selecting the most appropriate data type for each column (e.g., TINYINT type for the gender column because there are no more than 127 genders), and enforce security through the use of foreign keys and the NOT NULL constraint.
- [x] Insert real values for each movie by searching them on IMDb & Wikipedia
- [x] Complete all 14 exercises with the bonus
- [x] All tests were conducted
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing
Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.
If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!
1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License
Distributed under the MIT License. See `LICENSE.txt` for more information.
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact
Raphael Zolotarev - raphaelzolotarev@gmail.com
<p align="right">(<a href="#readme-top">back to top</a>)</p>
