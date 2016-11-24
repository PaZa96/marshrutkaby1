
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/24/2016 21:25:53
-- Generated from EDMX file: D:\Учёба\Диплом\marshrutkaby\MarshrutkabyDBModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MarshrutkaDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'RegistrationSet'
CREATE TABLE [dbo].[RegistrationSet] (
    [IdPassenger] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Birthday] datetime  NOT NULL,
    [PhoneNumber] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CarsSet'
CREATE TABLE [dbo].[CarsSet] (
    [IdCar] int IDENTITY(1,1) NOT NULL,
    [Color] nvarchar(max)  NOT NULL,
    [NumberPlate] nvarchar(max)  NOT NULL,
    [Services] nvarchar(max)  NOT NULL,
    [NumberOfSeats] nvarchar(max)  NOT NULL,
    [TransportCompanyIdTransportCompany] int  NOT NULL
);
GO

-- Creating table 'DriversSet'
CREATE TABLE [dbo].[DriversSet] (
    [IdDriver] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Birthday] nvarchar(max)  NOT NULL,
    [License] nvarchar(max)  NOT NULL,
    [NumberPhone] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Rating] nvarchar(max)  NOT NULL,
    [TransportCompanyIdTransportCompany1] int  NOT NULL
);
GO

-- Creating table 'TransportCompanySet'
CREATE TABLE [dbo].[TransportCompanySet] (
    [IdTransportCompany] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [NumberPhone] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Rating] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'OrderSet'
CREATE TABLE [dbo].[OrderSet] (
    [IdOrder] int IDENTITY(1,1) NOT NULL,
    [IdPassenger] int  NOT NULL,
    [IdTransportCompanyIdTransportCompany] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdPassenger] in table 'RegistrationSet'
ALTER TABLE [dbo].[RegistrationSet]
ADD CONSTRAINT [PK_RegistrationSet]
    PRIMARY KEY CLUSTERED ([IdPassenger] ASC);
GO

-- Creating primary key on [IdCar] in table 'CarsSet'
ALTER TABLE [dbo].[CarsSet]
ADD CONSTRAINT [PK_CarsSet]
    PRIMARY KEY CLUSTERED ([IdCar] ASC);
GO

-- Creating primary key on [IdDriver] in table 'DriversSet'
ALTER TABLE [dbo].[DriversSet]
ADD CONSTRAINT [PK_DriversSet]
    PRIMARY KEY CLUSTERED ([IdDriver] ASC);
GO

-- Creating primary key on [IdTransportCompany] in table 'TransportCompanySet'
ALTER TABLE [dbo].[TransportCompanySet]
ADD CONSTRAINT [PK_TransportCompanySet]
    PRIMARY KEY CLUSTERED ([IdTransportCompany] ASC);
GO

-- Creating primary key on [IdOrder] in table 'OrderSet'
ALTER TABLE [dbo].[OrderSet]
ADD CONSTRAINT [PK_OrderSet]
    PRIMARY KEY CLUSTERED ([IdOrder] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TransportCompanyIdTransportCompany1] in table 'DriversSet'
ALTER TABLE [dbo].[DriversSet]
ADD CONSTRAINT [FK_TransportCompanyDrivers]
    FOREIGN KEY ([TransportCompanyIdTransportCompany1])
    REFERENCES [dbo].[TransportCompanySet]
        ([IdTransportCompany])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransportCompanyDrivers'
CREATE INDEX [IX_FK_TransportCompanyDrivers]
ON [dbo].[DriversSet]
    ([TransportCompanyIdTransportCompany1]);
GO

-- Creating foreign key on [TransportCompanyIdTransportCompany] in table 'CarsSet'
ALTER TABLE [dbo].[CarsSet]
ADD CONSTRAINT [FK_TransportCompanyCars]
    FOREIGN KEY ([TransportCompanyIdTransportCompany])
    REFERENCES [dbo].[TransportCompanySet]
        ([IdTransportCompany])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TransportCompanyCars'
CREATE INDEX [IX_FK_TransportCompanyCars]
ON [dbo].[CarsSet]
    ([TransportCompanyIdTransportCompany]);
GO

-- Creating foreign key on [IdPassenger] in table 'OrderSet'
ALTER TABLE [dbo].[OrderSet]
ADD CONSTRAINT [FK_RegistrationOrder]
    FOREIGN KEY ([IdPassenger])
    REFERENCES [dbo].[RegistrationSet]
        ([IdPassenger])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegistrationOrder'
CREATE INDEX [IX_FK_RegistrationOrder]
ON [dbo].[OrderSet]
    ([IdPassenger]);
GO

-- Creating foreign key on [IdTransportCompanyIdTransportCompany] in table 'OrderSet'
ALTER TABLE [dbo].[OrderSet]
ADD CONSTRAINT [FK_OrderTransportCompany]
    FOREIGN KEY ([IdTransportCompanyIdTransportCompany])
    REFERENCES [dbo].[TransportCompanySet]
        ([IdTransportCompany])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderTransportCompany'
CREATE INDEX [IX_FK_OrderTransportCompany]
ON [dbo].[OrderSet]
    ([IdTransportCompanyIdTransportCompany]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------