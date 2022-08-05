let connectioQuery = require("../connection")

exports.addProduct = (req, res) => {
    const { discripion, subcateid, price, discount_price, color, unique_sku, product_location } = req.body
    let query_data = `INSERT INTO Product_item(discripion,
        price,discount_price,color,unique_sku,product_location,image,subcateid) values ('${discripion}','${price}','${discount_price}','${color}','${unique_sku}','${product_location}','${req.file.path}','${subcateid}')`
    connectioQuery.query(query_data, (err, data) => {
        if (err) {
            res.json({
                code: 400,
                msg: "something went wrong"
            })
        } else {
            res.json({
                code: 200,
                msg: "product added sucessfully"
            })
        }
    })
}


exports.use_filter = (req, res) => {
    const { name, price, color, location } = req.body
    var dbQuery = 'SELECT * from `Product_item` INNER JOIN `Subcategory` ON `Product_item` .`subcateid` = `Subcategory`.`subcateid` INNER JOIN `Category` ON `Subcategory` .`subcateid` = `Category`.`categoryId`  WHERE 1=1';

    if (name) {
        dbQuery += ' AND `discripion` = ' + connectioQuery.escape(name);
    }
    if (price) {
        dbQuery += ' AND `price` <= ' + connectioQuery.escape(parseInt(price));
    }
    if (color) {
        dbQuery += ' AND `color` = ' + connectioQuery.escape(color);
    }
    if (location) {
        dbQuery += ' AND `product_location` = ' + connectioQuery.escape(location);
    }
    dbQuery+=''
    connectioQuery.query(dbQuery, function (err, rows, fields) {
        if (err) {
            res.json({
                code: 400,
                msg: err
            })
        } else {
            res.json({
                code: 200, msg: rows
            })
        }

    });

}
