# CMP175-Web Development Project 

## About the project.

This project create for the final report of the course CMP175 - Webside development.

This Website create using ASP.NET MVC

This project Create by group 4:
- Nguyen Tan Hiep
- Do Chi Bao
- Mai xuan Vien
- Nguyen Phan Ba Trac

## Getting Started

To start this porject localy on your development enviroment you need to 

### Prerequisites.

You computer have to have already install
- **.NET**
- **SQLSERVER**
- **Visual Studio**

### Installation.

First to run this project you need to create a Database name ``eCommerceVer2`` by navigate to ``LapNhanh/Assets/DB/DB.sql`` open the file using **SQLSERVER** And run the script if done right you Database Structure should look some thing like this 
<div align =center >
  <img src="https://raw.githubusercontent.com/centopw/LapNhanh/master/Assets/Image/DB_struct.png" />
  
  *In the DB.sql script is already include data for the website so once you run it the server should be good to go*
</div>



Then After that you need to open the project by navigate to ``~\LapNhanh\source\Eshop.sln`` open the file with **Visual Studio** then inside the project navigator go to ``LapNhanh/source/EShop/appsettings.json`` open up and you should see this

<div align =center>
  <img src="https://github.com/centopw/LapNhanh/blob/master/Assets/Image/DB_Name.png?raw=true" />
  
  *Change the ``Server=CENTO`` into you SQLSERVER name*
</div>



Ex: My server name is ``LOCALHOST`` then it should be ``Server=LOCALHOST``

### Usage

This project already come with a Admin user and Member user

To login as an Admin, in the browser navigate to ``\admin\login\index``

Then input admin certificate 
  - User: ``Admin``
  - Password: ``123456``
 
 For the Customer:
  - User: ``Member``
  - Password: ``123456``
