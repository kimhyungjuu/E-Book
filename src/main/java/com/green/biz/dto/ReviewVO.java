package com.green.biz.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVO {
	private int bseq;
	private int rseq;
	private String id;
	private Timestamp indate;
	private int rating;
	private String content;
}
