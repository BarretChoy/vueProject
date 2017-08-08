//引入fs模块
var fs = require("fs");
//引入multer模块
var multer = require("multer");

//引入express模块
var express = require("express");
var app = express();
app.listen("6789");

//使用bodyParser模块
var bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json());

//引入mysql模块
var mysql = require("mysql");

//连接数据库
var connection = mysql.createConnection({
	host:"localhost",
	user:"root",
	password:"",
	database:"goods"
});

//查询重复路由
app.get("/check",function(req,res){
	var data = req.query;
	res.append("Access-Control-Allow-Origin","*");
	connection.query("SELECT id FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		if(results.length == 0){
			res.end("");
		}else{
			res.end("repeated");
		}
	})
})

//注册路由
app.get("/reg",function(req,res){
	var data = req.query;
	res.append("Access-Control-Allow-Origin","*");
	connection.query("INSERT INTO user_info (username,password,head_pic,buy_car) VALUES ('" + data.username + "','" + data.password + "','uploads/mine-headerpic.jpg','[]')");
	res.end("注册成功");
})

//登录路由
app.get("/log",function(req,res){
	var data = req.query;
	res.append("Access-Control-Allow-Origin","*");
	connection.query("SELECT * FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		if(results.length == 0){
			res.end("用户名不存在");
		}else if(results[0].password != data.password){
			res.end("密码错误");
		}else{
			res.end("success");
		}
	})
})

//获取个人信息
app.get("/userinfo",function(req,res){
	var data = req.query;
	console.log(data);
	res.append("Access-Control-Allow-Origin","*");
	connection.query("SELECT * FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		if(results){
			res.end(JSON.stringify(results[0]));
		}
	})
})

//上传头像
var storage = multer.diskStorage({
	//设置上传后文件路径，uploads文件夹会自动创建。
	destination: function(req, file, cb) {
		cb(null, './uploads')
	},
	//给上传文件重命名，获取添加后缀名
	filename: function(req, file, cb) {
		var fileFormat = (file.originalname).split(".");
		//给图片加上时间戳格式防止重名名
		//比如把 abc.jpg图片切割为数组[abc,jpg],然后用数组长度-1来获取后缀名
		cb(null, file.fieldname + '-' + Date.now() + "." + fileFormat[fileFormat.length - 1]);
	}
});
var upload = multer({
	storage: storage
});

//设置路由
app.post("/headpic",upload.any(),function(req,res){
	res.append("Access-Control-Allow-Origin","*");
	var data = req.body;
	//删除原来的头像
	connection.query("SELECT head_pic FROM user_info WHERE username ='" + data.username + "'",function(err,results,fields){
		//如头像为默认头像则不删除
		if(results[0].head_pic != "uploads/mine-headerpic.jpg"){
			//删除头像的图片
			fs.unlink(results[0].head_pic, (err)=>{
				if(err) throw err;
				console.log("删除成功");
			});
		}
		//将新头像路径存入数据库
		//使用正则替换\符号避免转义

		var reg = new RegExp(/\\/g);

		req.files[0].path = req.files[0].path.replace(reg,"/");
		console.log(req.files[0].path);
		connection.query("UPDATE user_info SET head_pic='" + req.files[0].path + "' WHERE username ='" + data.username + "'");
		//将新头像路径返回前端
		res.end(req.files[0].path);
	})
})

//上传购物车信息
app.get("/uploadbuycar",function(req,res){
	var data = req.query;
	console.log(data);
	connection.query("SELECT buy_car FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		var buycarObj = {
			id:data.id,
			num:Number(data.num)
		}
		if(!results[0].buy_car){
			var buycarArr = [];
			buycarArr.push(buycarObj);
			connection.query("UPDATE user_info SET buy_car='" + JSON.stringify(buycarArr) + "' WHERE username='" + data.username + "'");
			res.end("success");
		}else{
			var buycarArr = JSON.parse(results[0].buy_car);
			//判断是否存在、如存在则数量增加、不存在则添加入数组
			var has = false;
			buycarArr.forEach(function(item){
				if(item.id == buycarObj.id){
					has = true;
				}
			})
			if(has){
				buycarArr.forEach(function(item){
					if(item.id == buycarObj.id){
						console.log(typeof item.num,typeof buycarObj.num);
						item.num += buycarObj.num;	
					}
				})
			}else{
				buycarArr.push(buycarObj);
			}
			connection.query("UPDATE user_info SET buy_car='" + JSON.stringify(buycarArr) + "' WHERE username='" + data.username + "'");
			res.end("success");
		}
	})
	res.append("Access-Control-Allow-Origin","*");
})

// 获取用户购物车信息
app.get("/getbuycar",function(req,res){
	var data = req.query;
	console.log(data);
	res.append("Access-Control-Allow-Origin","*");
	connection.query("SELECT buy_car FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		res.end(JSON.stringify(results[0]))
	})
})

//删除购物车信息
app.get("/deletebuycar",function(req,res){
	var data = req.query;
	console.log(data);
	res.append("Access-Control-Allow-Origin","*");
	connection.query("SELECT buy_car FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		if(results[0]){
			var buycarArr = JSON.parse(results[0].buy_car);
			//遍历购物车信息删除对应信息
			buycarArr.forEach(function(item){
				if(item.id == data.id){
					console.log(buycarArr.indexOf(item));
					buycarArr.splice(buycarArr.indexOf(item),1);
					console.log(buycarArr);
					//更新至数据库
					connection.query("UPDATE user_info SET buy_car ='" + JSON.stringify(buycarArr) + "' WHERE username ='" + data.username + "'");
					res.end(JSON.stringify(buycarArr));
				}
			})
		}else{
			res.end("信息不存在");
			console.log("信息不存在");
		}
	})
})

//上传收藏信息
app.get("/uploadfavorite",function(req,res){
	var data = req.query;
	console.log(data);
	connection.query("SELECT good_collection FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		console.log(data);
		//判断为取消或收藏
		if(data.heartlight == "true"){
			//判断数据库中是否存在数据
			if(!results[0].good_collection){
				var favoriteArr = [];
				favoriteArr.push(data.id);
				connection.query("UPDATE user_info SET good_collection='" + JSON.stringify(favoriteArr) + "' WHERE username='" + data.username + "'");
			}else{
				var favoriteArr = JSON.parse(results[0].good_collection);
				favoriteArr.push(data.id);
				connection.query("UPDATE user_info SET good_collection='" + JSON.stringify(favoriteArr) + "' WHERE username='" + data.username + "'");
			}
		}else{
			var favoriteArr = JSON.parse(results[0].good_collection);
			favoriteArr.forEach(function(item){
				if(item.id = data.id){
					favoriteArr.splice(favoriteArr.indexOf(item),1);
				}
			})
			connection.query("UPDATE user_info SET good_collection='" + JSON.stringify(favoriteArr) + "' WHERE username='" + data.username + "'");	
		}
	})
	res.append("Access-Control-Allow-Origin","*");
})

//获取收藏信息
app.get("/getfavorite",function(req,res){
	var data = req.query;
	res.append("Access-Control-Allow-Origin","*");
	connection.query("SELECT good_collection FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		res.end(results[0].good_collection);
	})
})

//上传地址信息
app.get("/addaddress",function(req,res){
	var data = JSON.parse(req.query.address);
	res.append("Access-Control-Allow-Origin","*");
	connection.query("SELECT address FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		if(err) throw err
		//将地址以数组形式写入数据库对应位置
		if(!results[0].address){
			var addressArr = [];
			addressArr.push(data);
			connection.query("UPDATE user_info SET address='" + JSON.stringify(addressArr) + "' WHERE username='" + data.username + "'");
			res.end("success");
		}else{
			var addressArr = JSON.parse(results[0].address);
			addressArr.push(data);
			connection.query("UPDATE user_info SET address='" + JSON.stringify(addressArr) + "' WHERE username='" + data.username + "'");
			res.end("success");
		}
	})
})

//获取地址信息
app.get("/getaddress",function(req,res){
	var data = req.query;
	res.append("Access-Control-Allow-Origin","*");
	connection.query("SELECT address FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		res.end(results[0].address);
	})
})

//删除地址信息
app.get("/deleteaddress",function(req,res){
	var data = req.query;
	res.append("Access-Control-Allow-Origin","*");
	connection.query("SELECT address FROM user_info WHERE username='" + data.username + "'",function(err,results,fields){
		if(results[0]){
			var addressArr = JSON.parse(results[0].address);
			addressArr.splice(data.index,1);
			connection.query("UPDATE user_info SET address='" + JSON.stringify(addressArr) + "' WHERE username='" + data.username + "'");
			res.end(JSON.stringify(addressArr));
		}
		res.end(results[0].address);
	})
})