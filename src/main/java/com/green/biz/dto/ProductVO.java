package com.green.biz.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import oracle.sql.CHAR;

@Getter
@Setter
@ToString
public class ProductVO {
	
	private int bseq;
	private String title;
	private String category;
	private int price;
	private int price_rent;
	private String content;
	private String image;
	private String useyn;
	private String likeyn;
	private String bestyn;
	private Timestamp regdate;
	private String author;
	//TODO: DB�߰��ʿ�
	private int rseq;
	private int ratingAvg;
}
