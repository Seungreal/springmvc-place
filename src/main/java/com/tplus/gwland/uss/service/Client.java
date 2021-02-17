package com.tplus.gwland.uss.service;

import lombok.Data;

@Data
public class Client {
	public int cliNum; 
	public String cliId, name, gender, phoneNum, regDate;
}

/* create table Client(
	cli_num int auto_increment primary key,
	cli_id varchar(20),
	name varchar(10),
	gender varchar(10),
	phone_num varchar(20),
	reg_date varchar(20));
	*/

/* 
 * 테스트용 db에 저장한 고객데이터
 * insert into Client(cli_id, name, gender, phone_num, reg_date) 
 values ('suho12', '박수호', '남', '01012345678', '931120'); */