package com.enterprise.entity;

public class entity2 {
	private String STOCK_NAME;
	private int STOCK_CAPI;
	public String getSTOCK_NAME() {
		return STOCK_NAME;
	}
	public void setSTOCK_NAME(String sTOCK_NAME) {
		STOCK_NAME = sTOCK_NAME;
	}
	public int getSTOCK_CAPI() {
		return STOCK_CAPI;
	}
	public void setSTOCK_CAPI(int sTOCK_CAPI) {
		STOCK_CAPI = sTOCK_CAPI;
	}
	public entity2(String sTOCK_NAME,int sTOCK_CAPI)

	{
		super();
		STOCK_NAME = sTOCK_NAME;
		STOCK_CAPI = sTOCK_CAPI;
	}
}
