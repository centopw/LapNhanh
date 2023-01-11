# MVC ASP.NET eCommerce Website.

## About.

This project is an eCommerce website for selling laptops that has been built using ASP.NET MVC. It was created as a final project for the CMP175 Web Development course by Group 4: Nguyen Tan Hiep, Do Chi Bao, Mai Xuan Vien, and Nguyen Phan Ba Trac.

## Getting Started

To run this project on your development environment, you will need to have the following installed:

- .NET
- SQL Server
- Visual Studio

Follow these steps to set up the project:

1. Create a database named `eCommerceVer2` by running the script in `LapNhanh/Assets/DB/DB.sql` using SQL Server. The database structure should look like this:
<div align =center >
  <img src="https://raw.githubusercontent.com/centopw/LapNhanh/master/Assets/Image/DB_struct.png" />
  
  *Note: The DB.sql script also includes data for the website, so you should be ready to go once it has been run.*
</div>

2. Open the project in Visual Studio by navigating to `~\LapNhanh\source\Eshop.sln`.

3. In the project navigator, go to `LapNhanh/source/EShop/appsettings.json` and update the `Server` value to the name of your SQL Server instance. For example, if the name of your server is `LOCALHOST`, the value should be `"Server=LOCALHOST"`.

<div align =center>
  <img src="https://github.com/centopw/LapNhanh/blob/master/Assets/Image/DB_Name.png?raw=true" />

</div>


### Usage

This project comes with an admin user and a member user:

- To log in as an admin, go to `\admin\login\index` in your browser and use the following credentials:
  - User: `Admin`
  - Password: `123456`

- To log in as a member, use the following credentials:
  - User: `Member`
  - Password: `123456`

## Additional Resources
- [ASP.NET MVC documentation](https://docs.microsoft.com/en-us/aspnet/core/mvc/overview)
- [SQL Server documentation](https://docs.microsoft.com/en-us/sql/sql-server/)
- [Visual Studio documentation](https://docs.microsoft.com/en-us/visualstudio/ide/getting-started-with-visual-studio?)
