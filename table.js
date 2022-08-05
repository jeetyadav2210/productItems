

// CREATE TABLE Category(
//     categoryId INT AUTO_INCREMENT,
//     name VARCHAR(100) NOT NULL,
//     PRIMARY KEY(categoryId)
// );

// CREATE TABLE Subcategory(
//     subcateid int NOT NULL AUTO_INCREMENT,
//     subcatename VARCHAR(100) NOT NULL,
//     categoryId int,
//     PRIMARY KEY(subcateid),
//     FOREIGN KEY(categoryId) REFERENCES Category(categoryId)
// );

// CREATE TABLE Product_item (
//     item_id int NOT NULL AUTO_INCREMENT,
//     discripion varchar(255),
//     image varchar(255),
//     price int,
//     discount_price int,
//     color varchar(255),
//     unique_sku varchar(255),
//     product_location varchar(255),
//     subcateid int,
//     PRIMARY KEY(item_id),
//     FOREIGN KEY(subcateid) REFERENCES Subcategory(subcateid)

// );


// CREATE TABLE Users(
//     username varchar(255),
//     email varchar(255),
//     password varchar(255)

// );