use eCom;

CREATE TABLE Users (
	u_id integer not null auto_increment,
	f_name text not null,
	l_name text,
	u_name text not null,
	email varchar(255) not null,
	pswd varchar(32) not null,
	primary key(u_id)
);

CREATE TABLE Addresses(
	a_id integer not null auto_increment,
	u_id int not null,
	line1 text not null,
	line2 text,
	city text not null,
	postcode varchar(6) not null,
	province varchar(2) not null,
	country text,
	primary key(a_id),
	foreign key(u_id) references Users(u_id) ON delete cascade
);

CREATE TABLE Category(
	ctgy_id int not null auto_increment,
	name text not null,
	primary key (ctgy_id)
);

CREATE TABLE Products(
	p_id int not null auto_increment,
	ctgy_id int not null,
	name text not null,
	dsc text,
	price float not null,
	primary key(p_id),
	foreign key(ctgy_id) references Category(ctgy_id) ON DELETE cascade
);

CREATE TABLE Orders(
	o_id int not null auto_increment,
	u_id int not null,
	order_dt datetime not null,
	delv_dt datetime not null,
	status varchar(50),
	subtotal float not null,
	primary key (o_id),
	foreign key(ctgy_id) references Category(ctgy_id)
);

CREATE TABLE Items(
	i_id int not null auto_increment,
	p_id int not null,
	o_id int not null,
	quantity int not null,
	primary key (i_id),
	foreign key(p_id) references Products(p_id),
	foreign key(o_id) references Orders(o_id)
);
