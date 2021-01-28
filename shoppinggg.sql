create database shoppinggg;
use shoppinggg;
create table User (
	id int auto_increment primary key,
	email varchar(50),
	username varchar(50) unique not null,
	password varchar(36) not null,
	avatar varchar(200),
	role_id int
	 
);

insert into User(id,email,username,password,avatar,role_id) values(1,"nvctoan@gmail.com","toan1","123","/Users/GIANG GIANG/Downloads/shoping_web_v0.2/WebContent/upload/avatar.png",1);
insert into User(id,email,username,password,avatar,role_id) values(2,"toann7700@gmail.com","toan2","123","/Users/GIANG GIANG/Downloads/shoping_web_v0.2/WebContent/upload/avatar.png",2);
insert into User(id,email,username,password,avatar,role_id) values(3,"nvctoan6463@gmail.com","toan3","123","/Users/GIANG GIANG/Downloads/shoping_web_v0.2/WebContent/upload/avatar.png",1);
insert into User(id,email,username,password,avatar,role_id) values(5,"toan6463@gmail.com","toan4","123","/Users/GIANG GIANG/Downloads/shoping_web_v0.2/WebContent/upload/avatar.png",2);
insert into User(id,email,username,password,avatar,role_id) values(6,"18130247@gmail.com","toan5","123","/Users/GIANG GIANG/Downloads/shoping_web_v0.2/WebContent/upload/avatar.png",2);
create table Category(
	cate_id int auto_increment primary key,
	cate_name varchar(255) not null
);
insert into Category(cate_name) values("Jean");
insert into Category(cate_name) values("Kaki");
create table Product(
	id int auto_increment primary key,
	name varchar(255) not null,
	price float ,
	cate_id int  not null ,
	des varchar(2000),
	image varchar(200)
);
insert into Product(name,price,cate_id,des,image) values("Quan nam ong rong",10000,1,"Quan cho nam, thich hop de di choi","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1B4zB_yw_V3RSMZlT-vAxUHTZZN2rUgnbLse_izU8y8QYs6vdqoGgeBBm10mmLJ9RrqaUUJ7Y&usqp=CAc");
insert into Product(name,price,cate_id,des,image) values("Ao so mi nam",15000,1,"Ao so mi nam, thich hop de di choi","https://file.hstatic.net/1000192516/file/quan-ao-nam-dep_1_84601ba55ac243eca0fa8a8ba01985ad_large.jpg");
insert into Product(name,price,cate_id,des,image) values("Ao thun nam",20000,1,"Ao thun nam, thich hop de di choi hoac di hoc","https://vcdn-giadinh.vnecdn.net/2020/04/22/5e97c1b6572a8-ao-thun-AHT26-nh-5892-5627-1587548776.jpg");
insert into Product(name,price,cate_id,des,image) values("Quan short nam",25000,1,"Quan short nam, thich hop de di choi","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhpeztHevu4XSOApQVImgkK4hmx7n8XrTftw&usqp=CAU");
insert into Product(name,price,cate_id,des,image) values("Quan nu vai sin hoi te",222000,2,"Quan nu mac di an toi","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT63P-C2S2FJhfJ-kJQRNqBLiBhwLddA2yUD6gxQUTw0RK-HofQ4fO3A2cqwnRi6EedRvQHV0SvNw&usqp=CAc");
insert into Product(name,price,cate_id,des,image) values("Quan nu vai sin hoi te",222000,2,"Quan nu mac di an toi","https://thoitrangteenthienphuc.vn/upload/images/quan-jogger-kaki-nam-1.jpg");
insert into Product(name,price,cate_id,des,image) values("Quan nu vai sin hoi te",222000,2,"Quan nu mac di an toi","https://thoitrangteenthienphuc.vn/upload/images/quan-jogger-kaki-nam-1.jpg");
insert into Product(name,price,cate_id,des,image) values("Quan nu vai sin hoi te",222000,2,"Quan nu mac di an toi","https://thoitrangteenthienphuc.vn/upload/images/quan-jogger-kaki-nam-1.jpg");
insert into Product(name,price,cate_id,des,image) values("Quan nu vai sin hoi te",222000,2,"Quan nu mac di an toi","https://thoitrangteenthienphuc.vn/upload/images/quan-jogger-kaki-nam-1.jpg");
insert into Product(name,price,cate_id,des,image) values("Quan nu vai sin hoi te",222000,2,"Quan nu mac di an toi","https://thoitrangteenthienphuc.vn/upload/images/quan-jogger-kaki-nam-1.jpg");
insert into Product(name,price,cate_id,des,image) values("Quan ao be gai",330000,3,"Quan ao be gai","https://image.voso.vn/users/vosoimage/images/2db843ea67641937000f5a61f1f83c7d?t%5B0%5D=compress%3Alevel%3D100&accessToken=72871e372d22acfed56db0c88ee45cada2ce0b344c21209be9f6d445aa4a43fc");
insert into Product(name,price,cate_id,des,image) values("Vay be gai",250000,3,"Vay be gai","https://toplist.vn/images/800px/tho-ngoc-kids-si-le-quan-ao-tre-em-447178.jpg");
insert into Product(name,price,cate_id,des,image) values("Quan ao be trai",300000,3,"Quan ao be trai","https://cf.shopee.vn/file/49e84ab7bbc758143edead2c50ee4dae");
insert into Product(name,price,cate_id,des,image) values("Quan ao em be",350000,3,"Quan ao em be","https://golmart.vn/wp-content/uploads/2019/01/quan_ao_tre_em_gia_re_1.jpg");


ALTER TABLE Product ADD CONSTRAINT fk_product_cart FOREIGN KEY (cate_id) REFERENCES Category(cate_id);


create table Cart(
	id varchar(50) primary key,
	u_id int  not null ,
	buyDate date
);
insert into Cart(id,u_id,buyDate) values(1,1,'2020-01-01');
ALTER TABLE Cart ADD CONSTRAINT fk_card_user FOREIGN KEY (u_id) REFERENCES User(id);

create table CartItem(
	id varchar(50) primary key,
	quantity int,
	unitPrice float,
	pro_id int not null,
	cat_id varchar(50)  not null
);
insert into CartItem(id,quantity,unitPrice,pro_id,cat_id) values(1,10,20000,1,"1");
ALTER TABLE CartItem ADD CONSTRAINT fk_carditem_product FOREIGN KEY (pro_id) REFERENCES Product(id);
ALTER TABLE CartItem ADD CONSTRAINT fk_carditem_cart FOREIGN KEY (cat_id) REFERENCES Cart(id);


