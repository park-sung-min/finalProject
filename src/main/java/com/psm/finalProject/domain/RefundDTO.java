package com.psm.finalProject.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class RefundDTO {

	private int ordersNo;
	private int productNo;
	private String id;
	private int refundQty;
	private Timestamp refundDate;
	private String refundStatus;
	private String refundReason;
	
	private ProductDTO product;
	
	
}
