package com.smhrd.mapper;

import lombok.Data;

@Data
public class BabyVO {
	private int condition_num;
	private int baby_num;
	private int hungry;
	private int pup;
	private int burping;
	private int cold_hot;
	private String condition_date;
}
