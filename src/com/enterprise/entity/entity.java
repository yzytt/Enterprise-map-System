package com.enterprise.entity;

public class entity {
	private String SUB_ID = "";
	private int ID = 0;
	private String PERSON_NAME = "";
	private String OPER_MAN_NAME = "";
public String getOPER_MAN_NAME() {
		return OPER_MAN_NAME;
	}
	public void setOPER_MAN_NAME(String oPER_MAN_NAME) {
		if(oPER_MAN_NAME==null) {
			oPER_MAN_NAME = "";
		}
		OPER_MAN_NAME = oPER_MAN_NAME;
	}
public String getPERSON_NAME() {
		return PERSON_NAME;
	}
	public void setPERSON_NAME(String pERSON_NAME) {
		if(pERSON_NAME==null) {
			pERSON_NAME = "";
		}
		PERSON_NAME = pERSON_NAME;
	}
public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
public String getSUB_ID() {
		return SUB_ID;
	}
	public void setSUB_ID(String sUB_ID) {
		if(sUB_ID==null) {
			sUB_ID = "";
		}
		SUB_ID = sUB_ID;
	}
	private String STOCK_NAME;
public String getSTOCK_NAME() {
		return STOCK_NAME;
	}
	public void setSTOCK_NAME(String sTOCK_NAME) {
		if(sTOCK_NAME==null) {
			sTOCK_NAME = "";
		}
		STOCK_NAME = sTOCK_NAME;
	}
	private int STOCK_CAPI;
public int getSTOCK_CAPI() {
		return STOCK_CAPI;
	}
	public void setSTOCK_CAPI(int sTOCK_CAPI) {
		
		STOCK_CAPI = sTOCK_CAPI;
	}
private String CORP_NAME = "";
private String TEL = "";
private String WEB_URL = "";
private String EMAIL = "";
private String ADDR = "";
private String REG_CAPI = "";
private String START_DATE = "";
private String CORP_STATUS = "";
private String REG_NO = "";
private String TAXPAY_NUM = "";
private String UNI_SCID = "" ;
private String ORG_INST_CODE = "";
private String ECON_KIND = "";
private String STAFF_SIZE = "";
private String FARE_TERM_START = "";
private String FARE_TERM_END = "";
private String BELONG_ORG = "";
private String CHECK_DATE = "";
private String ENGLISH_NAME = "";
private String FORMER_NAME = "";
private String BELONG_DIST_ORG = "";
private String BELONG_TRADE = "";
private String FARE_SCOPE = "";
public String getCORP_NAME() {
	return CORP_NAME;
}
public void setCORP_NAME(String cORP_NAME) {
	if(cORP_NAME==null) {
		cORP_NAME = "";
	}
	CORP_NAME = cORP_NAME;
}
public String getTEL() {
	return TEL;
}
public void setTEL(String tEL) {
	if(tEL==null) {
		tEL = "";
	}
	TEL = tEL;
}
public String getWEB_URL() {
	return WEB_URL;
}
public void setWEB_URL(String wEB_URL) {
	if(wEB_URL==null) {
		wEB_URL = "";
	}
	WEB_URL = wEB_URL;
}
public String getEMAIL() {
	return EMAIL;
}
public void setEMAIL(String eMAIL) {
	if(eMAIL==null) {
		eMAIL = "";
	}
	EMAIL = eMAIL;
}
public String getADDR() {
	return ADDR;
}
public void setADDR(String aDDR) {
	if(aDDR==null) {
		aDDR = "";
	}
	ADDR = aDDR;
}
public String getREG_CAPI() {
	return REG_CAPI;
}
public void setREG_CAPI(String rEG_CAPI) {
	if(rEG_CAPI==null) {
		rEG_CAPI = "";
	}
	REG_CAPI = rEG_CAPI;
}
public String getSTART_DATE() {
	return START_DATE;
}
public void setSTART_DATE(String sTART_DATE) {
	if(sTART_DATE==null) {
		sTART_DATE = "";
	}
	START_DATE = sTART_DATE;
}
public String getCORP_STATUS() {
	return CORP_STATUS;
}
public void setCORP_STATUS(String cORP_STATUS) {
	if(cORP_STATUS==null) {
		cORP_STATUS = "";
	}
	CORP_STATUS = cORP_STATUS;
}
public String getREG_NO() {
	return REG_NO;
}
public void setREG_NO(String rEG_NO) {
	if(rEG_NO==null) {
		rEG_NO = "";
	}
	REG_NO = rEG_NO;
}
public String getTAXPAY_NUM() {
	return TAXPAY_NUM;
}
public void setTAXPAY_NUM(String tAXPAY_NUM) {
	if(tAXPAY_NUM==null) {
		tAXPAY_NUM = "";
	}
	TAXPAY_NUM = tAXPAY_NUM;
}
public String getUNI_SCID() {
	return UNI_SCID;
}
public void setUNI_SCID(String uNI_SCID) {
	if(uNI_SCID==null) {
		uNI_SCID = "";
	}
	UNI_SCID = uNI_SCID;
}
public String getORG_INST_CODE() {
	return ORG_INST_CODE;
}
public void setORG_INST_CODE(String oRG_INST_CODE) {
	if(oRG_INST_CODE==null) {
		oRG_INST_CODE = "";
	}
	ORG_INST_CODE = oRG_INST_CODE;
}
public String getECON_KIND() {
	return ECON_KIND;
}
public void setECON_KIND(String eCON_KIND) {
	if(eCON_KIND==null) {
		eCON_KIND = "";
	}
	ECON_KIND = eCON_KIND;
}
public String getSTAFF_SIZE() {
	return STAFF_SIZE;
}
public void setSTAFF_SIZE(String sTAFF_SIZE) {
	if(sTAFF_SIZE==null) {
		sTAFF_SIZE = "";
	}
	STAFF_SIZE = sTAFF_SIZE;
}
public String getFARE_TERM_START() {
	return FARE_TERM_START;
}
public void setFARE_TERM_START(String fARE_TERM_START) {
	if(fARE_TERM_START==null) {
		fARE_TERM_START = "";
	}
	FARE_TERM_START = fARE_TERM_START;
}
public String getFARE_TERM_END() {
	return FARE_TERM_END;
}
public void setFARE_TERM_END(String fARE_TERM_END) {
	if(fARE_TERM_END==null) {
		fARE_TERM_END = "-";
	}
	FARE_TERM_END = fARE_TERM_END;
}
public String getBELONG_ORG() {
	return BELONG_ORG;
}
public void setBELONG_ORG(String bELONG_ORG) {
	if(bELONG_ORG==null) {
		bELONG_ORG = "";
	}
	BELONG_ORG = bELONG_ORG;
}
public String getCHECK_DATE() {
	return CHECK_DATE;
}
public void setCHECK_DATE(String cHECK_DATE) {
	if(cHECK_DATE==null) {
		cHECK_DATE = "";
	}
	CHECK_DATE = cHECK_DATE;
}
public String getENGLISH_NAME() {
	return ENGLISH_NAME;
}
public void setENGLISH_NAME(String eNGLISH_NAME) {
	if(eNGLISH_NAME==null) {
		eNGLISH_NAME = "";
	}
	ENGLISH_NAME = eNGLISH_NAME;
}
public String getFORMER_NAME() {
	return FORMER_NAME;
}
public void setFORMER_NAME(String fORMER_NAME) {
	if(fORMER_NAME==null) {
		fORMER_NAME = "";
	}
	FORMER_NAME = fORMER_NAME;
}
public String getBELONG_DIST_ORG() {
	return BELONG_DIST_ORG;
}
public void setBELONG_DIST_ORG(String bELONG_DIST_ORG) {
	if(bELONG_DIST_ORG==null) {
		bELONG_DIST_ORG = "";
	}
	BELONG_DIST_ORG = bELONG_DIST_ORG;
}
public String getBELONG_TRADE() {
	return BELONG_TRADE;
}
public void setBELONG_TRADE(String bELONG_TRADE) {
	if(bELONG_TRADE==null) {
		bELONG_TRADE = "";
	}
	BELONG_TRADE = bELONG_TRADE;
}
public String getFARE_SCOPE() {
	return FARE_SCOPE;
}
public void setFARE_SCOPE(String fARE_SCOPE) {
	if(fARE_SCOPE==null) {
		fARE_SCOPE = "";
	}
	FARE_SCOPE = fARE_SCOPE;
}
}
