let { addProduct, use_filter} = require("../controller/item_details");
let { tokenCheck } = require("../helper")
const multer = require('multer');
var express = require('express');
let path = require("path")
var router = express.Router();

const imageStorage = multer.diskStorage({
    destination: 'images',
    filename: (req, file, cb) => {
        cb(null, file.fieldname + '_' + Date.now()
            + path.extname(file.originalname))
      
    }
});

const imageUpload = multer({
    storage: imageStorage,
    limits: {
        fileSize: 1000000 // 1000000 Bytes = 1 MB
    },
    fileFilter(req, file, cb) {
        if (!file.originalname.match(/\.(png|jpg)$/)) {
            return cb(new Error('Please upload a Image'))
        }
        cb(undefined, true)
    }
})

router.post("/add-product", imageUpload.single('image'),  addProduct);
router.post("/by_filter",use_filter);



module.exports = router