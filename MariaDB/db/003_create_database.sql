if not exists(SELECT 1 FROM sys.databases WHERE name = N'@@MYSQL_DATABASE@@')
begin
	CREATE DATABASE [@@MYSQL_DATABASE@@] Collate SQL_Latin1_General_CP1_CI_AS
	ALTER DATABASE [@@MYSQL_DATABASE@@] MODIFY FILE (NAME = '@@MYSQL_DATABASE@@', SIZE = 500 MB, FILEGROWTH = 10%)
	ALTER DATABASE [@@MYSQL_DATABASE@@] MODIFY FILE (NAME = '@@MYSQL_DATABASE@@_log', SIZE = 500 MB, FILEGROWTH = 10%)
	ALTER DATABASE [@@MYSQL_DATABASE@@] SET AUTO_SHRINK OFF WITH NO_WAIT
	ALTER DATABASE [@@MYSQL_DATABASE@@] SET AUTO_CREATE_STATISTICS ON WITH NO_WAIT
	ALTER DATABASE [@@MYSQL_DATABASE@@] SET AUTO_UPDATE_STATISTICS ON WITH NO_WAIT
	ALTER DATABASE [@@MYSQL_DATABASE@@] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT
	ALTER DATABASE [@@MYSQL_DATABASE@@] SET RECOVERY SIMPLE
	ALTER DATABASE [@@MYSQL_DATABASE@@] SET COMPATIBILITY_LEVEL = 130
end
GO