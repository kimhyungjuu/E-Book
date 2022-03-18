package com.green.biz.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class WishlistVO {

	private int wseq;
	private String id;
	private int bseq;
	private String result;
	private String mname;
	private String title;
	private int price;
	private int price_rent;
	private Timestamp indate;
}
