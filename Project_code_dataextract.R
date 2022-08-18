path <- "C:/Lokesh/Project/Data"
setwd(path)
library("devtools")
library("quantstrat")
library("quantmod")
library("fImport")
library("Quandl")
library("quantmod")
library("tseries")

api_code = "W5KXYHRB4Y5ajifUJNnq"
start_date = "2010-01-01"
end_date = "2019-01-01"

start_date = "2019-01-01"
end_date = "2019-04-01"


vallist <- read.csv("vallist.csv",stringsAsFactors = FALSE)
for (i in 1:nrow(vallist)){
  getSymbols(vallist[i,1], src = "yahoo", from = start_date, to = end_date)
}



list.files(pattern="*.csv")
pvtbankl <- read.csv("ind_nifty_privatebanklist.csv",stringsAsFactors = FALSE)
autol <- read.csv("ind_niftyautolist.csv",stringsAsFactors = FALSE)
financel <- read.csv("ind_niftyfinancelist.csv",stringsAsFactors = FALSE)
fmcgl <- read.csv("ind_niftyfmcglist.csv",stringsAsFactors = FALSE)
itl <- read.csv("ind_niftyitlist.csv",stringsAsFactors = FALSE)
medial <- read.csv("ind_niftymedialist.csv",stringsAsFactors = FALSE)
metall <- read.csv("ind_niftymetallist.csv",stringsAsFactors = FALSE)
pharmal <- read.csv("ind_niftypharmalist.csv",stringsAsFactors = FALSE)
psubankl <- read.csv("ind_niftypsubanklist.csv",stringsAsFactors = FALSE)
realtyl <- read.csv("ind_niftyrealtylist.csv",stringsAsFactors = FALSE)

datalist <- rbind(pvtbankl,autol,financel,fmcgl,itl,medial,metall,pharmal,psubankl,realtyl)
datalist$ticker <- paste0(datalist$Symbol,".NS")

for (i in 1:nrow(datalist)){
  getSymbols(datalist[i,6], src = "yahoo", from = "2010-01-01", to = "2019-01-01")
}

nms <- ls(pattern = ".NS")


write.csv(datalist, "ticker.csv")

write.csv(nms, "ticker1.csv")

datalist1 <- read.csv("tickerleft.csv",stringsAsFactors = FALSE)
datalist1 <- datalist1[-1,]
for (i in 1:nrow(datalist1)){
  getSymbols(datalist1[i,6], src = "yahoo", from = "2010-01-01", to = "2019-01-01")
}





AMARAJABAT_ret  <- na.omit(ROC(Cl(AMARAJABAT.NS)))
APLAPOLLO_ret  <- na.omit(ROC(Cl(APLAPOLLO.NS)))
APOLLOTYRE_ret  <- na.omit(ROC(Cl(APOLLOTYRE.NS)))
ASHOKLEY_ret  <- na.omit(ROC(Cl(ASHOKLEY.NS)))
AUROPHARMA_ret  <- na.omit(ROC(Cl(AUROPHARMA.NS)))
AXISBANK_ret  <- na.omit(ROC(Cl(AXISBANK.NS)))
BAJAJ-AUTO_ret  <- na.omit(ROC(Cl(BAJAJ-AUTO.NS)))
BAJAJFINSV_ret  <- na.omit(ROC(Cl(BAJAJFINSV.NS)))
BAJAJHLDNG_ret  <- na.omit(ROC(Cl(BAJAJHLDNG.NS)))
BAJFINANCE_ret  <- na.omit(ROC(Cl(BAJFINANCE.NS)))
BANKBARODA_ret  <- na.omit(ROC(Cl(BANKBARODA.NS)))
BANKINDIA_ret  <- na.omit(ROC(Cl(BANKINDIA.NS)))
BHARATFORG_ret  <- na.omit(ROC(Cl(BHARATFORG.NS)))
BIOCON_ret  <- na.omit(ROC(Cl(BIOCON.NS)))
BOSCHLTD_ret  <- na.omit(ROC(Cl(BOSCHLTD.NS)))
BRIGADE_ret  <- na.omit(ROC(Cl(BRIGADE.NS)))
BRITANNIA_ret  <- na.omit(ROC(Cl(BRITANNIA.NS)))
CADILAHC_ret  <- na.omit(ROC(Cl(CADILAHC.NS)))
CANBK_ret  <- na.omit(ROC(Cl(CANBK.NS)))
CENTRALBK_ret  <- na.omit(ROC(Cl(CENTRALBK.NS)))
CHOLAFIN_ret  <- na.omit(ROC(Cl(CHOLAFIN.NS)))
CIPLA_ret  <- na.omit(ROC(Cl(CIPLA.NS)))
COALINDIA_ret  <- na.omit(ROC(Cl(COALINDIA.NS)))
COLPAL_ret  <- na.omit(ROC(Cl(COLPAL.NS)))
DABUR_ret  <- na.omit(ROC(Cl(DABUR.NS)))
DBCORP_ret  <- na.omit(ROC(Cl(DBCORP.NS)))
DEN_ret  <- na.omit(ROC(Cl(DEN.NS)))
DISHTV_ret  <- na.omit(ROC(Cl(DISHTV.NS)))
DIVISLAB_ret  <- na.omit(ROC(Cl(DIVISLAB.NS)))
DLF_ret  <- na.omit(ROC(Cl(DLF.NS)))
DRREDDY_ret  <- na.omit(ROC(Cl(DRREDDY.NS)))
EDELWEISS_ret  <- na.omit(ROC(Cl(EDELWEISS.NS)))
EICHERMOT_ret  <- na.omit(ROC(Cl(EICHERMOT.NS)))
EMAMILTD_ret  <- na.omit(ROC(Cl(EMAMILTD.NS)))
EROSMEDIA_ret  <- na.omit(ROC(Cl(EROSMEDIA.NS)))
EXIDEIND_ret  <- na.omit(ROC(Cl(EXIDEIND.NS)))
FEDERALBNK_ret  <- na.omit(ROC(Cl(FEDERALBNK.NS)))
GLENMARK_ret  <- na.omit(ROC(Cl(GLENMARK.NS)))
GODREJCP_ret  <- na.omit(ROC(Cl(GODREJCP.NS)))
GODREJIND_ret  <- na.omit(ROC(Cl(GODREJIND.NS)))
GODREJPROP_ret  <- na.omit(ROC(Cl(GODREJPROP.NS)))
GSKCONS_ret  <- na.omit(ROC(Cl(GSKCONS.NS)))
HATHWAY_ret  <- na.omit(ROC(Cl(HATHWAY.NS)))
HCLTECH_ret  <- na.omit(ROC(Cl(HCLTECH.NS)))
HDFC_ret  <- na.omit(ROC(Cl(HDFC.NS)))
HDFCBANK_ret  <- na.omit(ROC(Cl(HDFCBANK.NS)))
HDFCLIFE_ret  <- na.omit(ROC(Cl(HDFCLIFE.NS)))
HEROMOTOCO_ret  <- na.omit(ROC(Cl(HEROMOTOCO.NS)))
HINDALCO_ret  <- na.omit(ROC(Cl(HINDALCO.NS)))
HINDCOPPER_ret  <- na.omit(ROC(Cl(HINDCOPPER.NS)))
HINDUNILVR_ret  <- na.omit(ROC(Cl(HINDUNILVR.NS)))
HINDZINC_ret  <- na.omit(ROC(Cl(HINDZINC.NS)))
IBREALEST_ret  <- na.omit(ROC(Cl(IBREALEST.NS)))
IBULHSGFIN_ret  <- na.omit(ROC(Cl(IBULHSGFIN.NS)))
IBVENTURES_ret  <- na.omit(ROC(Cl(IBVENTURES.NS)))
ICICIBANK_ret  <- na.omit(ROC(Cl(ICICIBANK.NS)))
ICICIPRULI_ret  <- na.omit(ROC(Cl(ICICIPRULI.NS)))
IDBI_ret  <- na.omit(ROC(Cl(IDBI.NS)))
IDFCFIRSTB_ret  <- na.omit(ROC(Cl(IDFCFIRSTB.NS)))
INDIANB_ret  <- na.omit(ROC(Cl(INDIANB.NS)))
INDUSINDBK_ret  <- na.omit(ROC(Cl(INDUSINDBK.NS)))
INFIBEAM_ret  <- na.omit(ROC(Cl(INFIBEAM.NS)))
INFY_ret  <- na.omit(ROC(Cl(INFY.NS)))
INOXLEISUR_ret  <- na.omit(ROC(Cl(INOXLEISUR.NS)))
ITC_ret  <- na.omit(ROC(Cl(ITC.NS)))
J&KBANK_ret  <- na.omit(ROC(Cl(J&KBANK.NS)))
JAGRAN_ret  <- na.omit(ROC(Cl(JAGRAN.NS)))
JINDALSTEL_ret  <- na.omit(ROC(Cl(JINDALSTEL.NS)))
JSLHISAR_ret  <- na.omit(ROC(Cl(JSLHISAR.NS)))
JSWSTEEL_ret  <- na.omit(ROC(Cl(JSWSTEEL.NS)))
JUBLFOOD_ret  <- na.omit(ROC(Cl(JUBLFOOD.NS)))
KOTAKBANK_ret  <- na.omit(ROC(Cl(KOTAKBANK.NS)))
LUPIN_ret  <- na.omit(ROC(Cl(LUPIN.NS)))
M&M_ret  <- na.omit(ROC(Cl(M&M.NS)))
M&MFIN_ret  <- na.omit(ROC(Cl(M&MFIN.NS)))
MARICO_ret  <- na.omit(ROC(Cl(MARICO.NS)))
MARUTI_ret  <- na.omit(ROC(Cl(MARUTI.NS)))
MFSL_ret  <- na.omit(ROC(Cl(MFSL.NS)))
MINDTREE_ret  <- na.omit(ROC(Cl(MINDTREE.NS)))
MOIL_ret  <- na.omit(ROC(Cl(MOIL.NS)))
MOTHERSUMI_ret  <- na.omit(ROC(Cl(MOTHERSUMI.NS)))
MRF_ret  <- na.omit(ROC(Cl(MRF.NS)))
NATIONALUM_ret  <- na.omit(ROC(Cl(NATIONALUM.NS)))
NETWORK18_ret  <- na.omit(ROC(Cl(NETWORK18.NS)))
NIITTECH_ret  <- na.omit(ROC(Cl(NIITTECH.NS)))
NMDC_ret  <- na.omit(ROC(Cl(NMDC.NS)))
OBEROIRLTY_ret  <- na.omit(ROC(Cl(OBEROIRLTY.NS)))
OFSS_ret  <- na.omit(ROC(Cl(OFSS.NS)))
ORIENTBANK_ret  <- na.omit(ROC(Cl(ORIENTBANK.NS)))
PEL_ret  <- na.omit(ROC(Cl(PEL.NS)))
PFC_ret  <- na.omit(ROC(Cl(PFC.NS)))
PGHH_ret  <- na.omit(ROC(Cl(PGHH.NS)))
PHOENIXLTD_ret  <- na.omit(ROC(Cl(PHOENIXLTD.NS)))
PNB_ret  <- na.omit(ROC(Cl(PNB.NS)))
PRESTIGE_ret  <- na.omit(ROC(Cl(PRESTIGE.NS)))
PVR_ret  <- na.omit(ROC(Cl(PVR.NS)))
RBLBANK_ret  <- na.omit(ROC(Cl(RBLBANK.NS)))
RECLTD_ret  <- na.omit(ROC(Cl(RECLTD.NS)))
SAIL_ret  <- na.omit(ROC(Cl(SAIL.NS)))
SBIN_ret  <- na.omit(ROC(Cl(SBIN.NS)))
SOBHA_ret  <- na.omit(ROC(Cl(SOBHA.NS)))
SOUTHBANK_ret  <- na.omit(ROC(Cl(SOUTHBANK.NS)))
SRTRANSFIN_ret  <- na.omit(ROC(Cl(SRTRANSFIN.NS)))
SUNPHARMA_ret  <- na.omit(ROC(Cl(SUNPHARMA.NS)))
SUNTECK_ret  <- na.omit(ROC(Cl(SUNTECK.NS)))
SUNTV_ret  <- na.omit(ROC(Cl(SUNTV.NS)))
SYNDIBANK_ret  <- na.omit(ROC(Cl(SYNDIBANK.NS)))
TATAELXSI_ret  <- na.omit(ROC(Cl(TATAELXSI.NS)))
TATAGLOBAL_ret  <- na.omit(ROC(Cl(TATAGLOBAL.NS)))
TATAMOTORS_ret  <- na.omit(ROC(Cl(TATAMOTORS.NS)))
TATAMTRDVR_ret  <- na.omit(ROC(Cl(TATAMTRDVR.NS)))
TATASTEEL_ret  <- na.omit(ROC(Cl(TATASTEEL.NS)))
TCS_ret  <- na.omit(ROC(Cl(TCS.NS)))
TECHM_ret  <- na.omit(ROC(Cl(TECHM.NS)))
TV18BRDCST_ret  <- na.omit(ROC(Cl(TV18BRDCST.NS)))
TVSMOTOR_ret  <- na.omit(ROC(Cl(TVSMOTOR.NS)))
TVTODAY_ret  <- na.omit(ROC(Cl(TVTODAY.NS)))
UBL_ret  <- na.omit(ROC(Cl(UBL.NS)))
UFO_ret  <- na.omit(ROC(Cl(UFO.NS)))
UNIONBANK_ret  <- na.omit(ROC(Cl(UNIONBANK.NS)))
UNITECH_ret  <- na.omit(ROC(Cl(UNITECH.NS)))
VEDL_ret  <- na.omit(ROC(Cl(VEDL.NS)))
WELCORP_ret  <- na.omit(ROC(Cl(WELCORP.NS)))
WIPRO_ret  <- na.omit(ROC(Cl(WIPRO.NS)))
YESBANK_ret  <- na.omit(ROC(Cl(YESBANK.NS)))
ZEEL_ret  <- na.omit(ROC(Cl(ZEEL.NS)))
ZEEMEDIA_ret  <- na.omit(ROC(Cl(ZEEMEDIA.NS)))

BAJAJAUTO_ret  <- na.omit(ROC(Cl(`BAJAJ-AUTO.NS`)))
MMFIN_ret  <- na.omit(ROC(Cl(`M&MFIN.NS`)))
MM_ret  <- na.omit(ROC(Cl(`M&M.NS`)))
JKBANK_ret  <- na.omit(ROC(Cl(`J&KBANK.NS`)))

df.list <- list(
  AMARAJABAT_ret,
  APLAPOLLO_ret,
  APOLLOTYRE_ret,
  ASHOKLEY_ret,
  AUROPHARMA_ret,
  AXISBANK_ret,
  BAJAJAUTO_ret,
  BAJAJFINSV_ret,
  BAJAJHLDNG_ret,
  BAJFINANCE_ret,
  BANKBARODA_ret,
  BANKINDIA_ret,
  BHARATFORG_ret,
  BIOCON_ret,
  BOSCHLTD_ret,
  BRIGADE_ret,
  BRITANNIA_ret,
  CADILAHC_ret,
  CANBK_ret,
  CENTRALBK_ret,
  CHOLAFIN_ret,
  CIPLA_ret,
  COALINDIA_ret,
  COLPAL_ret,
  DABUR_ret,
  DBCORP_ret,
  DEN_ret,
  DISHTV_ret,
  DIVISLAB_ret,
  DLF_ret,
  DRREDDY_ret,
  EDELWEISS_ret,
  EICHERMOT_ret,
  EMAMILTD_ret,
  EROSMEDIA_ret,
  EXIDEIND_ret,
  FEDERALBNK_ret,
  GLENMARK_ret,
  GODREJCP_ret,
  GODREJIND_ret,
  GODREJPROP_ret,
  GSKCONS_ret,
  HATHWAY_ret,
  HCLTECH_ret,
  HDFC_ret,
  HDFCBANK_ret,
  HDFCLIFE_ret,
  HEROMOTOCO_ret,
  HINDALCO_ret,
  HINDCOPPER_ret,
  HINDUNILVR_ret,
  HINDZINC_ret,
  IBREALEST_ret,
  IBULHSGFIN_ret,
  IBVENTURES_ret,
  ICICIBANK_ret,
  ICICIPRULI_ret,
  IDBI_ret,
  INDIANB_ret,
  INDUSINDBK_ret,
  INFIBEAM_ret,
  INFY_ret,
  INOXLEISUR_ret,
  ITC_ret,
  JKBANK_ret,
  JAGRAN_ret,
  JINDALSTEL_ret,
  JSLHISAR_ret,
  JSWSTEEL_ret,
  JUBLFOOD_ret,
  KOTAKBANK_ret,
  LUPIN_ret,
  MM_ret,
  MMFIN_ret,
  MARICO_ret,
  MARUTI_ret,
  MFSL_ret,
  MINDTREE_ret,
  MOIL_ret,
  MOTHERSUMI_ret,
  MRF_ret,
  NATIONALUM_ret,
  NETWORK18_ret,
  NIITTECH_ret,
  NMDC_ret,
  OBEROIRLTY_ret,
  OFSS_ret,
  ORIENTBANK_ret,
  PEL_ret,
  PFC_ret,
  PGHH_ret,
  PHOENIXLTD_ret,
  PNB_ret,
  PRESTIGE_ret,
  PVR_ret,
  RBLBANK_ret,
  RECLTD_ret,
  SAIL_ret,
  SBIN_ret,
  SOBHA_ret,
  SOUTHBANK_ret,
  SRTRANSFIN_ret,
  SUNPHARMA_ret,
  SUNTECK_ret,
  SUNTV_ret,
  SYNDIBANK_ret,
  TATAELXSI_ret,
  TATAGLOBAL_ret,
  TATAMOTORS_ret,
  TATAMTRDVR_ret,
  TATASTEEL_ret,
  TCS_ret,
  TECHM_ret,
  TV18BRDCST_ret,
  TVSMOTOR_ret,
  TVTODAY_ret,
  UBL_ret,
  UFO_ret,
  UNIONBANK_ret,
  UNITECH_ret,
  VEDL_ret,
  WELCORP_ret,
  WIPRO_ret,
  YESBANK_ret,
  ZEEL_ret,
  ZEEMEDIA_ret
)
lapply(df.list, function(x){x$vol <- na.omit(rollapply(x,20,sd)*sqrt(252))})
lapply(df.list, function(x){mean(na.omit(x$vol))})



dfvol <- as.data.frame(df.list)
#IDFCFIRSTB_ret,

AMARAJABAT_ret$vol <- na.omit(rollapply(AMARAJABAT_ret,20,sd)*sqrt(252))
APLAPOLLO_ret$vol <- na.omit(rollapply(APLAPOLLO_ret,20,sd)*sqrt(252))
APOLLOTYRE_ret$vol <- na.omit(rollapply(APOLLOTYRE_ret,20,sd)*sqrt(252))
ASHOKLEY_ret$vol <- na.omit(rollapply(ASHOKLEY_ret,20,sd)*sqrt(252))
AUROPHARMA_ret$vol <- na.omit(rollapply(AUROPHARMA_ret,20,sd)*sqrt(252))
AXISBANK_ret$vol <- na.omit(rollapply(AXISBANK_ret,20,sd)*sqrt(252))
BAJAJAUTO_ret$vol <- na.omit(rollapply(BAJAJAUTO_ret,20,sd)*sqrt(252))
BAJAJFINSV_ret$vol <- na.omit(rollapply(BAJAJFINSV_ret,20,sd)*sqrt(252))
BAJAJHLDNG_ret$vol <- na.omit(rollapply(BAJAJHLDNG_ret,20,sd)*sqrt(252))
BAJFINANCE_ret$vol <- na.omit(rollapply(BAJFINANCE_ret,20,sd)*sqrt(252))
BANKBARODA_ret$vol <- na.omit(rollapply(BANKBARODA_ret,20,sd)*sqrt(252))
BANKINDIA_ret$vol <- na.omit(rollapply(BANKINDIA_ret,20,sd)*sqrt(252))
BHARATFORG_ret$vol <- na.omit(rollapply(BHARATFORG_ret,20,sd)*sqrt(252))
BIOCON_ret$vol <- na.omit(rollapply(BIOCON_ret,20,sd)*sqrt(252))
BOSCHLTD_ret$vol <- na.omit(rollapply(BOSCHLTD_ret,20,sd)*sqrt(252))
BRIGADE_ret$vol <- na.omit(rollapply(BRIGADE_ret,20,sd)*sqrt(252))
BRITANNIA_ret$vol <- na.omit(rollapply(BRITANNIA_ret,20,sd)*sqrt(252))
CADILAHC_ret$vol <- na.omit(rollapply(CADILAHC_ret,20,sd)*sqrt(252))
CANBK_ret$vol <- na.omit(rollapply(CANBK_ret,20,sd)*sqrt(252))
CENTRALBK_ret$vol <- na.omit(rollapply(CENTRALBK_ret,20,sd)*sqrt(252))
CHOLAFIN_ret$vol <- na.omit(rollapply(CHOLAFIN_ret,20,sd)*sqrt(252))
CIPLA_ret$vol <- na.omit(rollapply(CIPLA_ret,20,sd)*sqrt(252))
COALINDIA_ret$vol <- na.omit(rollapply(COALINDIA_ret,20,sd)*sqrt(252))
COLPAL_ret$vol <- na.omit(rollapply(COLPAL_ret,20,sd)*sqrt(252))
DABUR_ret$vol <- na.omit(rollapply(DABUR_ret,20,sd)*sqrt(252))
DBCORP_ret$vol <- na.omit(rollapply(DBCORP_ret,20,sd)*sqrt(252))
DEN_ret$vol <- na.omit(rollapply(DEN_ret,20,sd)*sqrt(252))
DISHTV_ret$vol <- na.omit(rollapply(DISHTV_ret,20,sd)*sqrt(252))
DIVISLAB_ret$vol <- na.omit(rollapply(DIVISLAB_ret,20,sd)*sqrt(252))
DLF_ret$vol <- na.omit(rollapply(DLF_ret,20,sd)*sqrt(252))
DRREDDY_ret$vol <- na.omit(rollapply(DRREDDY_ret,20,sd)*sqrt(252))
EDELWEISS_ret$vol <- na.omit(rollapply(EDELWEISS_ret,20,sd)*sqrt(252))
EICHERMOT_ret$vol <- na.omit(rollapply(EICHERMOT_ret,20,sd)*sqrt(252))
EMAMILTD_ret$vol <- na.omit(rollapply(EMAMILTD_ret,20,sd)*sqrt(252))
EROSMEDIA_ret$vol <- na.omit(rollapply(EROSMEDIA_ret,20,sd)*sqrt(252))
EXIDEIND_ret$vol <- na.omit(rollapply(EXIDEIND_ret,20,sd)*sqrt(252))
FEDERALBNK_ret$vol <- na.omit(rollapply(FEDERALBNK_ret,20,sd)*sqrt(252))
GLENMARK_ret$vol <- na.omit(rollapply(GLENMARK_ret,20,sd)*sqrt(252))
GODREJCP_ret$vol <- na.omit(rollapply(GODREJCP_ret,20,sd)*sqrt(252))
GODREJIND_ret$vol <- na.omit(rollapply(GODREJIND_ret,20,sd)*sqrt(252))
GODREJPROP_ret$vol <- na.omit(rollapply(GODREJPROP_ret,20,sd)*sqrt(252))
GSKCONS_ret$vol <- na.omit(rollapply(GSKCONS_ret,20,sd)*sqrt(252))
HATHWAY_ret$vol <- na.omit(rollapply(HATHWAY_ret,20,sd)*sqrt(252))
HCLTECH_ret$vol <- na.omit(rollapply(HCLTECH_ret,20,sd)*sqrt(252))
HDFC_ret$vol <- na.omit(rollapply(HDFC_ret,20,sd)*sqrt(252))
HDFCBANK_ret$vol <- na.omit(rollapply(HDFCBANK_ret,20,sd)*sqrt(252))
HDFCLIFE_ret$vol <- na.omit(rollapply(HDFCLIFE_ret,20,sd)*sqrt(252))
HEROMOTOCO_ret$vol <- na.omit(rollapply(HEROMOTOCO_ret,20,sd)*sqrt(252))
HINDALCO_ret$vol <- na.omit(rollapply(HINDALCO_ret,20,sd)*sqrt(252))
HINDCOPPER_ret$vol <- na.omit(rollapply(HINDCOPPER_ret,20,sd)*sqrt(252))
HINDUNILVR_ret$vol <- na.omit(rollapply(HINDUNILVR_ret,20,sd)*sqrt(252))
HINDZINC_ret$vol <- na.omit(rollapply(HINDZINC_ret,20,sd)*sqrt(252))
IBREALEST_ret$vol <- na.omit(rollapply(IBREALEST_ret,20,sd)*sqrt(252))
IBULHSGFIN_ret$vol <- na.omit(rollapply(IBULHSGFIN_ret,20,sd)*sqrt(252))
IBVENTURES_ret$vol <- na.omit(rollapply(IBVENTURES_ret,20,sd)*sqrt(252))
ICICIBANK_ret$vol <- na.omit(rollapply(ICICIBANK_ret,20,sd)*sqrt(252))
ICICIPRULI_ret$vol <- na.omit(rollapply(ICICIPRULI_ret,20,sd)*sqrt(252))
IDBI_ret$vol <- na.omit(rollapply(IDBI_ret,20,sd)*sqrt(252))
IDFCFIRSTB_ret$vol <- na.omit(rollapply(IDFCFIRSTB_ret,20,sd)*sqrt(252))
INDIANB_ret$vol <- na.omit(rollapply(INDIANB_ret,20,sd)*sqrt(252))
INDUSINDBK_ret$vol <- na.omit(rollapply(INDUSINDBK_ret,20,sd)*sqrt(252))
INFIBEAM_ret$vol <- na.omit(rollapply(INFIBEAM_ret,20,sd)*sqrt(252))
INFY_ret$vol <- na.omit(rollapply(INFY_ret,20,sd)*sqrt(252))
INOXLEISUR_ret$vol <- na.omit(rollapply(INOXLEISUR_ret,20,sd)*sqrt(252))
ITC_ret$vol <- na.omit(rollapply(ITC_ret,20,sd)*sqrt(252))
JKBANK_ret$vol <- na.omit(rollapply(JKBANK_ret,20,sd)*sqrt(252))
JAGRAN_ret$vol <- na.omit(rollapply(JAGRAN_ret,20,sd)*sqrt(252))
JINDALSTEL_ret$vol <- na.omit(rollapply(JINDALSTEL_ret,20,sd)*sqrt(252))
JSLHISAR_ret$vol <- na.omit(rollapply(JSLHISAR_ret,20,sd)*sqrt(252))
JSWSTEEL_ret$vol <- na.omit(rollapply(JSWSTEEL_ret,20,sd)*sqrt(252))
JUBLFOOD_ret$vol <- na.omit(rollapply(JUBLFOOD_ret,20,sd)*sqrt(252))
KOTAKBANK_ret$vol <- na.omit(rollapply(KOTAKBANK_ret,20,sd)*sqrt(252))
LUPIN_ret$vol <- na.omit(rollapply(LUPIN_ret,20,sd)*sqrt(252))
MM_ret$vol <- na.omit(rollapply(MM_ret,20,sd)*sqrt(252))
MMFIN_ret$vol <- na.omit(rollapply(MMFIN_ret,20,sd)*sqrt(252))
MARICO_ret$vol <- na.omit(rollapply(MARICO_ret,20,sd)*sqrt(252))
MARUTI_ret$vol <- na.omit(rollapply(MARUTI_ret,20,sd)*sqrt(252))
MFSL_ret$vol <- na.omit(rollapply(MFSL_ret,20,sd)*sqrt(252))
MINDTREE_ret$vol <- na.omit(rollapply(MINDTREE_ret,20,sd)*sqrt(252))
MOIL_ret$vol <- na.omit(rollapply(MOIL_ret,20,sd)*sqrt(252))
MOTHERSUMI_ret$vol <- na.omit(rollapply(MOTHERSUMI_ret,20,sd)*sqrt(252))
MRF_ret$vol <- na.omit(rollapply(MRF_ret,20,sd)*sqrt(252))
NATIONALUM_ret$vol <- na.omit(rollapply(NATIONALUM_ret,20,sd)*sqrt(252))
NETWORK18_ret$vol <- na.omit(rollapply(NETWORK18_ret,20,sd)*sqrt(252))
NIITTECH_ret$vol <- na.omit(rollapply(NIITTECH_ret,20,sd)*sqrt(252))
NMDC_ret$vol <- na.omit(rollapply(NMDC_ret,20,sd)*sqrt(252))
OBEROIRLTY_ret$vol <- na.omit(rollapply(OBEROIRLTY_ret,20,sd)*sqrt(252))
OFSS_ret$vol <- na.omit(rollapply(OFSS_ret,20,sd)*sqrt(252))
ORIENTBANK_ret$vol <- na.omit(rollapply(ORIENTBANK_ret,20,sd)*sqrt(252))
PEL_ret$vol <- na.omit(rollapply(PEL_ret,20,sd)*sqrt(252))
PFC_ret$vol <- na.omit(rollapply(PFC_ret,20,sd)*sqrt(252))
PGHH_ret$vol <- na.omit(rollapply(PGHH_ret,20,sd)*sqrt(252))
PHOENIXLTD_ret$vol <- na.omit(rollapply(PHOENIXLTD_ret,20,sd)*sqrt(252))
PNB_ret$vol <- na.omit(rollapply(PNB_ret,20,sd)*sqrt(252))
PRESTIGE_ret$vol <- na.omit(rollapply(PRESTIGE_ret,20,sd)*sqrt(252))
PVR_ret$vol <- na.omit(rollapply(PVR_ret,20,sd)*sqrt(252))
RBLBANK_ret$vol <- na.omit(rollapply(RBLBANK_ret,20,sd)*sqrt(252))
RECLTD_ret$vol <- na.omit(rollapply(RECLTD_ret,20,sd)*sqrt(252))
SAIL_ret$vol <- na.omit(rollapply(SAIL_ret,20,sd)*sqrt(252))
SBIN_ret$vol <- na.omit(rollapply(SBIN_ret,20,sd)*sqrt(252))
SOBHA_ret$vol <- na.omit(rollapply(SOBHA_ret,20,sd)*sqrt(252))
SOUTHBANK_ret$vol <- na.omit(rollapply(SOUTHBANK_ret,20,sd)*sqrt(252))
SRTRANSFIN_ret$vol <- na.omit(rollapply(SRTRANSFIN_ret,20,sd)*sqrt(252))
SUNPHARMA_ret$vol <- na.omit(rollapply(SUNPHARMA_ret,20,sd)*sqrt(252))
SUNTECK_ret$vol <- na.omit(rollapply(SUNTECK_ret,20,sd)*sqrt(252))
SUNTV_ret$vol <- na.omit(rollapply(SUNTV_ret,20,sd)*sqrt(252))
SYNDIBANK_ret$vol <- na.omit(rollapply(SYNDIBANK_ret,20,sd)*sqrt(252))
TATAELXSI_ret$vol <- na.omit(rollapply(TATAELXSI_ret,20,sd)*sqrt(252))
TATAGLOBAL_ret$vol <- na.omit(rollapply(TATAGLOBAL_ret,20,sd)*sqrt(252))
TATAMOTORS_ret$vol <- na.omit(rollapply(TATAMOTORS_ret,20,sd)*sqrt(252))
TATAMTRDVR_ret$vol <- na.omit(rollapply(TATAMTRDVR_ret,20,sd)*sqrt(252))
TATASTEEL_ret$vol <- na.omit(rollapply(TATASTEEL_ret,20,sd)*sqrt(252))
TCS_ret$vol <- na.omit(rollapply(TCS_ret,20,sd)*sqrt(252))
TECHM_ret$vol <- na.omit(rollapply(TECHM_ret,20,sd)*sqrt(252))
TV18BRDCST_ret$vol <- na.omit(rollapply(TV18BRDCST_ret,20,sd)*sqrt(252))
TVSMOTOR_ret$vol <- na.omit(rollapply(TVSMOTOR_ret,20,sd)*sqrt(252))
TVTODAY_ret$vol <- na.omit(rollapply(TVTODAY_ret,20,sd)*sqrt(252))
UBL_ret$vol <- na.omit(rollapply(UBL_ret,20,sd)*sqrt(252))
UFO_ret$vol <- na.omit(rollapply(UFO_ret,20,sd)*sqrt(252))
UNIONBANK_ret$vol <- na.omit(rollapply(UNIONBANK_ret,20,sd)*sqrt(252))
UNITECH_ret$vol <- na.omit(rollapply(UNITECH_ret,20,sd)*sqrt(252))
VEDL_ret$vol <- na.omit(rollapply(VEDL_ret,20,sd)*sqrt(252))
WELCORP_ret$vol <- na.omit(rollapply(WELCORP_ret,20,sd)*sqrt(252))
WIPRO_ret$vol <- na.omit(rollapply(WIPRO_ret,20,sd)*sqrt(252))
YESBANK_ret$vol <- na.omit(rollapply(YESBANK_ret,20,sd)*sqrt(252))
ZEEL_ret$vol <- na.omit(rollapply(ZEEL_ret,20,sd)*sqrt(252))
ZEEMEDIA_ret$vol <- na.omit(rollapply(ZEEMEDIA_ret,20,sd)*sqrt(252))

dfvol <- read.csv("vol.csv",stringsAsFactors = FALSE)
dfvol$volatility <- 0
dfvol$volatility[1] <- mean(na.omit(AMARAJABAT_ret$vol))
dfvol$volatility[2] <- mean(na.omit(APLAPOLLO_ret$vol))
dfvol$volatility[3] <- mean(na.omit(APOLLOTYRE_ret$vol))
dfvol$volatility[4] <- mean(na.omit(ASHOKLEY_ret$vol))
dfvol$volatility[5] <- mean(na.omit(AUROPHARMA_ret$vol))
dfvol$volatility[6] <- mean(na.omit(AXISBANK_ret$vol))
dfvol$volatility[7] <- mean(na.omit(BAJAJAUTO_ret$vol))
dfvol$volatility[8] <- mean(na.omit(BAJAJFINSV_ret$vol))
dfvol$volatility[9] <- mean(na.omit(BAJAJHLDNG_ret$vol))
dfvol$volatility[10] <- mean(na.omit(BAJFINANCE_ret$vol))
dfvol$volatility[11] <- mean(na.omit(BANKBARODA_ret$vol))
dfvol$volatility[12] <- mean(na.omit(BANKINDIA_ret$vol))
dfvol$volatility[13] <- mean(na.omit(BHARATFORG_ret$vol))
dfvol$volatility[14] <- mean(na.omit(BIOCON_ret$vol))
dfvol$volatility[15] <- mean(na.omit(BOSCHLTD_ret$vol))
dfvol$volatility[16] <- mean(na.omit(BRIGADE_ret$vol))
dfvol$volatility[17] <- mean(na.omit(BRITANNIA_ret$vol))
dfvol$volatility[18] <- mean(na.omit(CADILAHC_ret$vol))
dfvol$volatility[19] <- mean(na.omit(CANBK_ret$vol))
dfvol$volatility[20] <- mean(na.omit(CENTRALBK_ret$vol))
dfvol$volatility[21] <- mean(na.omit(CHOLAFIN_ret$vol))
dfvol$volatility[22] <- mean(na.omit(CIPLA_ret$vol))
dfvol$volatility[23] <- mean(na.omit(COALINDIA_ret$vol))
dfvol$volatility[24] <- mean(na.omit(COLPAL_ret$vol))
dfvol$volatility[25] <- mean(na.omit(DABUR_ret$vol))
dfvol$volatility[26] <- mean(na.omit(DBCORP_ret$vol))
dfvol$volatility[27] <- mean(na.omit(DEN_ret$vol))
dfvol$volatility[28] <- mean(na.omit(DISHTV_ret$vol))
dfvol$volatility[29] <- mean(na.omit(DIVISLAB_ret$vol))
dfvol$volatility[30] <- mean(na.omit(DLF_ret$vol))
dfvol$volatility[31] <- mean(na.omit(DRREDDY_ret$vol))
dfvol$volatility[32] <- mean(na.omit(EDELWEISS_ret$vol))
dfvol$volatility[33] <- mean(na.omit(EICHERMOT_ret$vol))
dfvol$volatility[34] <- mean(na.omit(EMAMILTD_ret$vol))
dfvol$volatility[35] <- mean(na.omit(EROSMEDIA_ret$vol))
dfvol$volatility[36] <- mean(na.omit(EXIDEIND_ret$vol))
dfvol$volatility[37] <- mean(na.omit(FEDERALBNK_ret$vol))
dfvol$volatility[38] <- mean(na.omit(GLENMARK_ret$vol))
dfvol$volatility[39] <- mean(na.omit(GODREJCP_ret$vol))
dfvol$volatility[40] <- mean(na.omit(GODREJIND_ret$vol))
dfvol$volatility[41] <- mean(na.omit(GODREJPROP_ret$vol))
dfvol$volatility[42] <- mean(na.omit(GSKCONS_ret$vol))
dfvol$volatility[43] <- mean(na.omit(HATHWAY_ret$vol))
dfvol$volatility[44] <- mean(na.omit(HCLTECH_ret$vol))
dfvol$volatility[45] <- mean(na.omit(HDFC_ret$vol))
dfvol$volatility[46] <- mean(na.omit(HDFCBANK_ret$vol))
dfvol$volatility[47] <- mean(na.omit(HDFCLIFE_ret$vol))
dfvol$volatility[48] <- mean(na.omit(HEROMOTOCO_ret$vol))
dfvol$volatility[49] <- mean(na.omit(HINDALCO_ret$vol))
dfvol$volatility[50] <- mean(na.omit(HINDCOPPER_ret$vol))
dfvol$volatility[51] <- mean(na.omit(HINDUNILVR_ret$vol))
dfvol$volatility[52] <- mean(na.omit(HINDZINC_ret$vol))
dfvol$volatility[53] <- mean(na.omit(IBREALEST_ret$vol))
dfvol$volatility[54] <- mean(na.omit(IBULHSGFIN_ret$vol))
dfvol$volatility[55] <- mean(na.omit(IBVENTURES_ret$vol))
dfvol$volatility[56] <- mean(na.omit(ICICIBANK_ret$vol))
dfvol$volatility[57] <- mean(na.omit(ICICIPRULI_ret$vol))
dfvol$volatility[58] <- mean(na.omit(IDBI_ret$vol))
dfvol$volatility[59] <- mean(na.omit(INDIANB_ret$vol))
dfvol$volatility[60] <- mean(na.omit(INDUSINDBK_ret$vol))
dfvol$volatility[61] <- mean(na.omit(INFIBEAM_ret$vol))
dfvol$volatility[62] <- mean(na.omit(INFY_ret$vol))
dfvol$volatility[63] <- mean(na.omit(INOXLEISUR_ret$vol))
dfvol$volatility[64] <- mean(na.omit(ITC_ret$vol))
dfvol$volatility[65] <- mean(na.omit(JKBANK_ret$vol))
dfvol$volatility[66] <- mean(na.omit(JAGRAN_ret$vol))
dfvol$volatility[67] <- mean(na.omit(JINDALSTEL_ret$vol))
dfvol$volatility[68] <- mean(na.omit(JSLHISAR_ret$vol))
dfvol$volatility[69] <- mean(na.omit(JSWSTEEL_ret$vol))
dfvol$volatility[70] <- mean(na.omit(JUBLFOOD_ret$vol))
dfvol$volatility[71] <- mean(na.omit(KOTAKBANK_ret$vol))
dfvol$volatility[72] <- mean(na.omit(LUPIN_ret$vol))
dfvol$volatility[73] <- mean(na.omit(MM_ret$vol))
dfvol$volatility[74] <- mean(na.omit(MMFIN_ret$vol))
dfvol$volatility[75] <- mean(na.omit(MARICO_ret$vol))
dfvol$volatility[76] <- mean(na.omit(MARUTI_ret$vol))
dfvol$volatility[77] <- mean(na.omit(MFSL_ret$vol))
dfvol$volatility[78] <- mean(na.omit(MINDTREE_ret$vol))
dfvol$volatility[79] <- mean(na.omit(MOIL_ret$vol))
dfvol$volatility[80] <- mean(na.omit(MOTHERSUMI_ret$vol))
dfvol$volatility[81] <- mean(na.omit(MRF_ret$vol))
dfvol$volatility[82] <- mean(na.omit(NATIONALUM_ret$vol))
dfvol$volatility[83] <- mean(na.omit(NETWORK18_ret$vol))
dfvol$volatility[84] <- mean(na.omit(NIITTECH_ret$vol))
dfvol$volatility[85] <- mean(na.omit(NMDC_ret$vol))
dfvol$volatility[86] <- mean(na.omit(OBEROIRLTY_ret$vol))
dfvol$volatility[87] <- mean(na.omit(OFSS_ret$vol))
dfvol$volatility[88] <- mean(na.omit(ORIENTBANK_ret$vol))
dfvol$volatility[89] <- mean(na.omit(PEL_ret$vol))
dfvol$volatility[90] <- mean(na.omit(PFC_ret$vol))
dfvol$volatility[91] <- mean(na.omit(PGHH_ret$vol))
dfvol$volatility[92] <- mean(na.omit(PHOENIXLTD_ret$vol))
dfvol$volatility[93] <- mean(na.omit(PNB_ret$vol))
dfvol$volatility[94] <- mean(na.omit(PRESTIGE_ret$vol))
dfvol$volatility[95] <- mean(na.omit(PVR_ret$vol))
dfvol$volatility[96] <- mean(na.omit(RBLBANK_ret$vol))
dfvol$volatility[97] <- mean(na.omit(RECLTD_ret$vol))
dfvol$volatility[98] <- mean(na.omit(SAIL_ret$vol))
dfvol$volatility[99] <- mean(na.omit(SBIN_ret$vol))
dfvol$volatility[100] <- mean(na.omit(SOBHA_ret$vol))
dfvol$volatility[101] <- mean(na.omit(SOUTHBANK_ret$vol))
dfvol$volatility[102] <- mean(na.omit(SRTRANSFIN_ret$vol))
dfvol$volatility[103] <- mean(na.omit(SUNPHARMA_ret$vol))
dfvol$volatility[104] <- mean(na.omit(SUNTECK_ret$vol))
dfvol$volatility[105] <- mean(na.omit(SUNTV_ret$vol))
dfvol$volatility[106] <- mean(na.omit(SYNDIBANK_ret$vol))
dfvol$volatility[107] <- mean(na.omit(TATAELXSI_ret$vol))
dfvol$volatility[108] <- mean(na.omit(TATAGLOBAL_ret$vol))
dfvol$volatility[109] <- mean(na.omit(TATAMOTORS_ret$vol))
dfvol$volatility[110] <- mean(na.omit(TATAMTRDVR_ret$vol))
dfvol$volatility[111] <- mean(na.omit(TATASTEEL_ret$vol))
dfvol$volatility[112] <- mean(na.omit(TCS_ret$vol))
dfvol$volatility[113] <- mean(na.omit(TECHM_ret$vol))
dfvol$volatility[114] <- mean(na.omit(TV18BRDCST_ret$vol))
dfvol$volatility[115] <- mean(na.omit(TVSMOTOR_ret$vol))
dfvol$volatility[116] <- mean(na.omit(TVTODAY_ret$vol))
dfvol$volatility[117] <- mean(na.omit(UBL_ret$vol))
dfvol$volatility[118] <- mean(na.omit(UFO_ret$vol))
dfvol$volatility[119] <- mean(na.omit(UNIONBANK_ret$vol))
dfvol$volatility[120] <- mean(na.omit(UNITECH_ret$vol))
dfvol$volatility[121] <- mean(na.omit(VEDL_ret$vol))
dfvol$volatility[122] <- mean(na.omit(WELCORP_ret$vol))
dfvol$volatility[123] <- mean(na.omit(WIPRO_ret$vol))
dfvol$volatility[124] <- mean(na.omit(YESBANK_ret$vol))
dfvol$volatility[125] <- mean(na.omit(ZEEL_ret$vol))
dfvol$volatility[126] <- mean(na.omit(ZEEMEDIA_ret$vol))

dfvol$avgreturn <- 0
dfvol$avgreturn[1] <- mean(na.omit(AMARAJABAT_ret[,1]))
dfvol$avgreturn[2] <- mean(na.omit(APLAPOLLO_ret[,1]))
dfvol$avgreturn[3] <- mean(na.omit(APOLLOTYRE_ret[,1]))
dfvol$avgreturn[4] <- mean(na.omit(ASHOKLEY_ret[,1]))
dfvol$avgreturn[5] <- mean(na.omit(AUROPHARMA_ret[,1]))
dfvol$avgreturn[6] <- mean(na.omit(AXISBANK_ret[,1]))
dfvol$avgreturn[7] <- mean(na.omit(BAJAJAUTO_ret[,1]))
dfvol$avgreturn[8] <- mean(na.omit(BAJAJFINSV_ret[,1]))
dfvol$avgreturn[9] <- mean(na.omit(BAJAJHLDNG_ret[,1]))
dfvol$avgreturn[10] <- mean(na.omit(BAJFINANCE_ret[,1]))
dfvol$avgreturn[11] <- mean(na.omit(BANKBARODA_ret[,1]))
dfvol$avgreturn[12] <- mean(na.omit(BANKINDIA_ret[,1]))
dfvol$avgreturn[13] <- mean(na.omit(BHARATFORG_ret[,1]))
dfvol$avgreturn[14] <- mean(na.omit(BIOCON_ret[,1]))
dfvol$avgreturn[15] <- mean(na.omit(BOSCHLTD_ret[,1]))
dfvol$avgreturn[16] <- mean(na.omit(BRIGADE_ret[,1]))
dfvol$avgreturn[17] <- mean(na.omit(BRITANNIA_ret[,1]))
dfvol$avgreturn[18] <- mean(na.omit(CADILAHC_ret[,1]))
dfvol$avgreturn[19] <- mean(na.omit(CANBK_ret[,1]))
dfvol$avgreturn[20] <- mean(na.omit(CENTRALBK_ret[,1]))
dfvol$avgreturn[21] <- mean(na.omit(CHOLAFIN_ret[,1]))
dfvol$avgreturn[22] <- mean(na.omit(CIPLA_ret[,1]))
dfvol$avgreturn[23] <- mean(na.omit(COALINDIA_ret[,1]))
dfvol$avgreturn[24] <- mean(na.omit(COLPAL_ret[,1]))
dfvol$avgreturn[25] <- mean(na.omit(DABUR_ret[,1]))
dfvol$avgreturn[26] <- mean(na.omit(DBCORP_ret[,1]))
dfvol$avgreturn[27] <- mean(na.omit(DEN_ret[,1]))
dfvol$avgreturn[28] <- mean(na.omit(DISHTV_ret[,1]))
dfvol$avgreturn[29] <- mean(na.omit(DIVISLAB_ret[,1]))
dfvol$avgreturn[30] <- mean(na.omit(DLF_ret[,1]))
dfvol$avgreturn[31] <- mean(na.omit(DRREDDY_ret[,1]))
dfvol$avgreturn[32] <- mean(na.omit(EDELWEISS_ret[,1]))
dfvol$avgreturn[33] <- mean(na.omit(EICHERMOT_ret[,1]))
dfvol$avgreturn[34] <- mean(na.omit(EMAMILTD_ret[,1]))
dfvol$avgreturn[35] <- mean(na.omit(EROSMEDIA_ret[,1]))
dfvol$avgreturn[36] <- mean(na.omit(EXIDEIND_ret[,1]))
dfvol$avgreturn[37] <- mean(na.omit(FEDERALBNK_ret[,1]))
dfvol$avgreturn[38] <- mean(na.omit(GLENMARK_ret[,1]))
dfvol$avgreturn[39] <- mean(na.omit(GODREJCP_ret[,1]))
dfvol$avgreturn[40] <- mean(na.omit(GODREJIND_ret[,1]))
dfvol$avgreturn[41] <- mean(na.omit(GODREJPROP_ret[,1]))
dfvol$avgreturn[42] <- mean(na.omit(GSKCONS_ret[,1]))
dfvol$avgreturn[43] <- mean(na.omit(HATHWAY_ret[,1]))
dfvol$avgreturn[44] <- mean(na.omit(HCLTECH_ret[,1]))
dfvol$avgreturn[45] <- mean(na.omit(HDFC_ret[,1]))
dfvol$avgreturn[46] <- mean(na.omit(HDFCBANK_ret[,1]))
dfvol$avgreturn[47] <- mean(na.omit(HDFCLIFE_ret[,1]))
dfvol$avgreturn[48] <- mean(na.omit(HEROMOTOCO_ret[,1]))
dfvol$avgreturn[49] <- mean(na.omit(HINDALCO_ret[,1]))
dfvol$avgreturn[50] <- mean(na.omit(HINDCOPPER_ret[,1]))
dfvol$avgreturn[51] <- mean(na.omit(HINDUNILVR_ret[,1]))
dfvol$avgreturn[52] <- mean(na.omit(HINDZINC_ret[,1]))
dfvol$avgreturn[53] <- mean(na.omit(IBREALEST_ret[,1]))
dfvol$avgreturn[54] <- mean(na.omit(IBULHSGFIN_ret[,1]))
dfvol$avgreturn[55] <- mean(na.omit(IBVENTURES_ret[,1]))
dfvol$avgreturn[56] <- mean(na.omit(ICICIBANK_ret[,1]))
dfvol$avgreturn[57] <- mean(na.omit(ICICIPRULI_ret[,1]))
dfvol$avgreturn[58] <- mean(na.omit(IDBI_ret[,1]))
dfvol$avgreturn[59] <- mean(na.omit(INDIANB_ret[,1]))
dfvol$avgreturn[60] <- mean(na.omit(INDUSINDBK_ret[,1]))
dfvol$avgreturn[61] <- mean(na.omit(INFIBEAM_ret[,1]))
dfvol$avgreturn[62] <- mean(na.omit(INFY_ret[,1]))
dfvol$avgreturn[63] <- mean(na.omit(INOXLEISUR_ret[,1]))
dfvol$avgreturn[64] <- mean(na.omit(ITC_ret[,1]))
dfvol$avgreturn[65] <- mean(na.omit(JKBANK_ret[,1]))
dfvol$avgreturn[66] <- mean(na.omit(JAGRAN_ret[,1]))
dfvol$avgreturn[67] <- mean(na.omit(JINDALSTEL_ret[,1]))
dfvol$avgreturn[68] <- mean(na.omit(JSLHISAR_ret[,1]))
dfvol$avgreturn[69] <- mean(na.omit(JSWSTEEL_ret[,1]))
dfvol$avgreturn[70] <- mean(na.omit(JUBLFOOD_ret[,1]))
dfvol$avgreturn[71] <- mean(na.omit(KOTAKBANK_ret[,1]))
dfvol$avgreturn[72] <- mean(na.omit(LUPIN_ret[,1]))
dfvol$avgreturn[73] <- mean(na.omit(MM_ret[,1]))
dfvol$avgreturn[74] <- mean(na.omit(MMFIN_ret[,1]))
dfvol$avgreturn[75] <- mean(na.omit(MARICO_ret[,1]))
dfvol$avgreturn[76] <- mean(na.omit(MARUTI_ret[,1]))
dfvol$avgreturn[77] <- mean(na.omit(MFSL_ret[,1]))
dfvol$avgreturn[78] <- mean(na.omit(MINDTREE_ret[,1]))
dfvol$avgreturn[79] <- mean(na.omit(MOIL_ret[,1]))
dfvol$avgreturn[80] <- mean(na.omit(MOTHERSUMI_ret[,1]))
dfvol$avgreturn[81] <- mean(na.omit(MRF_ret[,1]))
dfvol$avgreturn[82] <- mean(na.omit(NATIONALUM_ret[,1]))
dfvol$avgreturn[83] <- mean(na.omit(NETWORK18_ret[,1]))
dfvol$avgreturn[84] <- mean(na.omit(NIITTECH_ret[,1]))
dfvol$avgreturn[85] <- mean(na.omit(NMDC_ret[,1]))
dfvol$avgreturn[86] <- mean(na.omit(OBEROIRLTY_ret[,1]))
dfvol$avgreturn[87] <- mean(na.omit(OFSS_ret[,1]))
dfvol$avgreturn[88] <- mean(na.omit(ORIENTBANK_ret[,1]))
dfvol$avgreturn[89] <- mean(na.omit(PEL_ret[,1]))
dfvol$avgreturn[90] <- mean(na.omit(PFC_ret[,1]))
dfvol$avgreturn[91] <- mean(na.omit(PGHH_ret[,1]))
dfvol$avgreturn[92] <- mean(na.omit(PHOENIXLTD_ret[,1]))
dfvol$avgreturn[93] <- mean(na.omit(PNB_ret[,1]))
dfvol$avgreturn[94] <- mean(na.omit(PRESTIGE_ret[,1]))
dfvol$avgreturn[95] <- mean(na.omit(PVR_ret[,1]))
dfvol$avgreturn[96] <- mean(na.omit(RBLBANK_ret[,1]))
dfvol$avgreturn[97] <- mean(na.omit(RECLTD_ret[,1]))
dfvol$avgreturn[98] <- mean(na.omit(SAIL_ret[,1]))
dfvol$avgreturn[99] <- mean(na.omit(SBIN_ret[,1]))
dfvol$avgreturn[100] <- mean(na.omit(SOBHA_ret[,1]))
dfvol$avgreturn[101] <- mean(na.omit(SOUTHBANK_ret[,1]))
dfvol$avgreturn[102] <- mean(na.omit(SRTRANSFIN_ret[,1]))
dfvol$avgreturn[103] <- mean(na.omit(SUNPHARMA_ret[,1]))
dfvol$avgreturn[104] <- mean(na.omit(SUNTECK_ret[,1]))
dfvol$avgreturn[105] <- mean(na.omit(SUNTV_ret[,1]))
dfvol$avgreturn[106] <- mean(na.omit(SYNDIBANK_ret[,1]))
dfvol$avgreturn[107] <- mean(na.omit(TATAELXSI_ret[,1]))
dfvol$avgreturn[108] <- mean(na.omit(TATAGLOBAL_ret[,1]))
dfvol$avgreturn[109] <- mean(na.omit(TATAMOTORS_ret[,1]))
dfvol$avgreturn[110] <- mean(na.omit(TATAMTRDVR_ret[,1]))
dfvol$avgreturn[111] <- mean(na.omit(TATASTEEL_ret[,1]))
dfvol$avgreturn[112] <- mean(na.omit(TCS_ret[,1]))
dfvol$avgreturn[113] <- mean(na.omit(TECHM_ret[,1]))
dfvol$avgreturn[114] <- mean(na.omit(TV18BRDCST_ret[,1]))
dfvol$avgreturn[115] <- mean(na.omit(TVSMOTOR_ret[,1]))
dfvol$avgreturn[116] <- mean(na.omit(TVTODAY_ret[,1]))
dfvol$avgreturn[117] <- mean(na.omit(UBL_ret[,1]))
dfvol$avgreturn[118] <- mean(na.omit(UFO_ret[,1]))
dfvol$avgreturn[119] <- mean(na.omit(UNIONBANK_ret[,1]))
dfvol$avgreturn[120] <- mean(na.omit(UNITECH_ret[,1]))
dfvol$avgreturn[121] <- mean(na.omit(VEDL_ret[,1]))
dfvol$avgreturn[122] <- mean(na.omit(WELCORP_ret[,1]))
dfvol$avgreturn[123] <- mean(na.omit(WIPRO_ret[,1]))
dfvol$avgreturn[124] <- mean(na.omit(YESBANK_ret[,1]))
dfvol$avgreturn[125] <- mean(na.omit(ZEEL_ret[,1]))
dfvol$avgreturn[126] <- mean(na.omit(ZEEMEDIA_ret[,1]))

dfvol$return18 <- 0
dfvol$return18[1] <- mean(na.omit(AMARAJABAT_ret[,1])['2018/'])
dfvol$return18[2] <- mean(na.omit(APLAPOLLO_ret[,1])['2018/'])
dfvol$return18[3] <- mean(na.omit(APOLLOTYRE_ret[,1])['2018/'])
dfvol$return18[4] <- mean(na.omit(ASHOKLEY_ret[,1])['2018/'])
dfvol$return18[5] <- mean(na.omit(AUROPHARMA_ret[,1])['2018/'])
dfvol$return18[6] <- mean(na.omit(AXISBANK_ret[,1])['2018/'])
dfvol$return18[7] <- mean(na.omit(BAJAJAUTO_ret[,1])['2018/'])
dfvol$return18[8] <- mean(na.omit(BAJAJFINSV_ret[,1])['2018/'])
dfvol$return18[9] <- mean(na.omit(BAJAJHLDNG_ret[,1])['2018/'])
dfvol$return18[10] <- mean(na.omit(BAJFINANCE_ret[,1])['2018/'])
dfvol$return18[11] <- mean(na.omit(BANKBARODA_ret[,1])['2018/'])
dfvol$return18[12] <- mean(na.omit(BANKINDIA_ret[,1])['2018/'])
dfvol$return18[13] <- mean(na.omit(BHARATFORG_ret[,1])['2018/'])
dfvol$return18[14] <- mean(na.omit(BIOCON_ret[,1])['2018/'])
dfvol$return18[15] <- mean(na.omit(BOSCHLTD_ret[,1])['2018/'])
dfvol$return18[16] <- mean(na.omit(BRIGADE_ret[,1])['2018/'])
dfvol$return18[17] <- mean(na.omit(BRITANNIA_ret[,1])['2018/'])
dfvol$return18[18] <- mean(na.omit(CADILAHC_ret[,1])['2018/'])
dfvol$return18[19] <- mean(na.omit(CANBK_ret[,1])['2018/'])
dfvol$return18[20] <- mean(na.omit(CENTRALBK_ret[,1])['2018/'])
dfvol$return18[21] <- mean(na.omit(CHOLAFIN_ret[,1])['2018/'])
dfvol$return18[22] <- mean(na.omit(CIPLA_ret[,1])['2018/'])
dfvol$return18[23] <- mean(na.omit(COALINDIA_ret[,1])['2018/'])
dfvol$return18[24] <- mean(na.omit(COLPAL_ret[,1])['2018/'])
dfvol$return18[25] <- mean(na.omit(DABUR_ret[,1])['2018/'])
dfvol$return18[26] <- mean(na.omit(DBCORP_ret[,1])['2018/'])
dfvol$return18[27] <- mean(na.omit(DEN_ret[,1])['2018/'])
dfvol$return18[28] <- mean(na.omit(DISHTV_ret[,1])['2018/'])
dfvol$return18[29] <- mean(na.omit(DIVISLAB_ret[,1])['2018/'])
dfvol$return18[30] <- mean(na.omit(DLF_ret[,1])['2018/'])
dfvol$return18[31] <- mean(na.omit(DRREDDY_ret[,1])['2018/'])
dfvol$return18[32] <- mean(na.omit(EDELWEISS_ret[,1])['2018/'])
dfvol$return18[33] <- mean(na.omit(EICHERMOT_ret[,1])['2018/'])
dfvol$return18[34] <- mean(na.omit(EMAMILTD_ret[,1])['2018/'])
dfvol$return18[35] <- mean(na.omit(EROSMEDIA_ret[,1])['2018/'])
dfvol$return18[36] <- mean(na.omit(EXIDEIND_ret[,1])['2018/'])
dfvol$return18[37] <- mean(na.omit(FEDERALBNK_ret[,1])['2018/'])
dfvol$return18[38] <- mean(na.omit(GLENMARK_ret[,1])['2018/'])
dfvol$return18[39] <- mean(na.omit(GODREJCP_ret[,1])['2018/'])
dfvol$return18[40] <- mean(na.omit(GODREJIND_ret[,1])['2018/'])
dfvol$return18[41] <- mean(na.omit(GODREJPROP_ret[,1])['2018/'])
dfvol$return18[42] <- mean(na.omit(GSKCONS_ret[,1])['2018/'])
dfvol$return18[43] <- mean(na.omit(HATHWAY_ret[,1])['2018/'])
dfvol$return18[44] <- mean(na.omit(HCLTECH_ret[,1])['2018/'])
dfvol$return18[45] <- mean(na.omit(HDFC_ret[,1])['2018/'])
dfvol$return18[46] <- mean(na.omit(HDFCBANK_ret[,1])['2018/'])
dfvol$return18[47] <- mean(na.omit(HDFCLIFE_ret[,1])['2018/'])
dfvol$return18[48] <- mean(na.omit(HEROMOTOCO_ret[,1])['2018/'])
dfvol$return18[49] <- mean(na.omit(HINDALCO_ret[,1])['2018/'])
dfvol$return18[50] <- mean(na.omit(HINDCOPPER_ret[,1])['2018/'])
dfvol$return18[51] <- mean(na.omit(HINDUNILVR_ret[,1])['2018/'])
dfvol$return18[52] <- mean(na.omit(HINDZINC_ret[,1])['2018/'])
dfvol$return18[53] <- mean(na.omit(IBREALEST_ret[,1])['2018/'])
dfvol$return18[54] <- mean(na.omit(IBULHSGFIN_ret[,1])['2018/'])
dfvol$return18[55] <- mean(na.omit(IBVENTURES_ret[,1])['2018/'])
dfvol$return18[56] <- mean(na.omit(ICICIBANK_ret[,1])['2018/'])
dfvol$return18[57] <- mean(na.omit(ICICIPRULI_ret[,1])['2018/'])
dfvol$return18[58] <- mean(na.omit(IDBI_ret[,1])['2018/'])
dfvol$return18[59] <- mean(na.omit(INDIANB_ret[,1])['2018/'])
dfvol$return18[60] <- mean(na.omit(INDUSINDBK_ret[,1])['2018/'])
dfvol$return18[61] <- mean(na.omit(INFIBEAM_ret[,1])['2018/'])
dfvol$return18[62] <- mean(na.omit(INFY_ret[,1])['2018/'])
dfvol$return18[63] <- mean(na.omit(INOXLEISUR_ret[,1])['2018/'])
dfvol$return18[64] <- mean(na.omit(ITC_ret[,1])['2018/'])
dfvol$return18[65] <- mean(na.omit(JKBANK_ret[,1])['2018/'])
dfvol$return18[66] <- mean(na.omit(JAGRAN_ret[,1])['2018/'])
dfvol$return18[67] <- mean(na.omit(JINDALSTEL_ret[,1])['2018/'])
dfvol$return18[68] <- mean(na.omit(JSLHISAR_ret[,1])['2018/'])
dfvol$return18[69] <- mean(na.omit(JSWSTEEL_ret[,1])['2018/'])
dfvol$return18[70] <- mean(na.omit(JUBLFOOD_ret[,1])['2018/'])
dfvol$return18[71] <- mean(na.omit(KOTAKBANK_ret[,1])['2018/'])
dfvol$return18[72] <- mean(na.omit(LUPIN_ret[,1])['2018/'])
dfvol$return18[73] <- mean(na.omit(MM_ret[,1])['2018/'])
dfvol$return18[74] <- mean(na.omit(MMFIN_ret[,1])['2018/'])
dfvol$return18[75] <- mean(na.omit(MARICO_ret[,1])['2018/'])
dfvol$return18[76] <- mean(na.omit(MARUTI_ret[,1])['2018/'])
dfvol$return18[77] <- mean(na.omit(MFSL_ret[,1])['2018/'])
dfvol$return18[78] <- mean(na.omit(MINDTREE_ret[,1])['2018/'])
dfvol$return18[79] <- mean(na.omit(MOIL_ret[,1])['2018/'])
dfvol$return18[80] <- mean(na.omit(MOTHERSUMI_ret[,1])['2018/'])
dfvol$return18[81] <- mean(na.omit(MRF_ret[,1])['2018/'])
dfvol$return18[82] <- mean(na.omit(NATIONALUM_ret[,1])['2018/'])
dfvol$return18[83] <- mean(na.omit(NETWORK18_ret[,1])['2018/'])
dfvol$return18[84] <- mean(na.omit(NIITTECH_ret[,1])['2018/'])
dfvol$return18[85] <- mean(na.omit(NMDC_ret[,1])['2018/'])
dfvol$return18[86] <- mean(na.omit(OBEROIRLTY_ret[,1])['2018/'])
dfvol$return18[87] <- mean(na.omit(OFSS_ret[,1])['2018/'])
dfvol$return18[88] <- mean(na.omit(ORIENTBANK_ret[,1])['2018/'])
dfvol$return18[89] <- mean(na.omit(PEL_ret[,1])['2018/'])
dfvol$return18[90] <- mean(na.omit(PFC_ret[,1])['2018/'])
dfvol$return18[91] <- mean(na.omit(PGHH_ret[,1])['2018/'])
dfvol$return18[92] <- mean(na.omit(PHOENIXLTD_ret[,1])['2018/'])
dfvol$return18[93] <- mean(na.omit(PNB_ret[,1])['2018/'])
dfvol$return18[94] <- mean(na.omit(PRESTIGE_ret[,1])['2018/'])
dfvol$return18[95] <- mean(na.omit(PVR_ret[,1])['2018/'])
dfvol$return18[96] <- mean(na.omit(RBLBANK_ret[,1])['2018/'])
dfvol$return18[97] <- mean(na.omit(RECLTD_ret[,1])['2018/'])
dfvol$return18[98] <- mean(na.omit(SAIL_ret[,1])['2018/'])
dfvol$return18[99] <- mean(na.omit(SBIN_ret[,1])['2018/'])
dfvol$return18[100] <- mean(na.omit(SOBHA_ret[,1])['2018/'])
dfvol$return18[101] <- mean(na.omit(SOUTHBANK_ret[,1])['2018/'])
dfvol$return18[102] <- mean(na.omit(SRTRANSFIN_ret[,1])['2018/'])
dfvol$return18[103] <- mean(na.omit(SUNPHARMA_ret[,1])['2018/'])
dfvol$return18[104] <- mean(na.omit(SUNTECK_ret[,1])['2018/'])
dfvol$return18[105] <- mean(na.omit(SUNTV_ret[,1])['2018/'])
dfvol$return18[106] <- mean(na.omit(SYNDIBANK_ret[,1])['2018/'])
dfvol$return18[107] <- mean(na.omit(TATAELXSI_ret[,1])['2018/'])
dfvol$return18[108] <- mean(na.omit(TATAGLOBAL_ret[,1])['2018/'])
dfvol$return18[109] <- mean(na.omit(TATAMOTORS_ret[,1])['2018/'])
dfvol$return18[110] <- mean(na.omit(TATAMTRDVR_ret[,1])['2018/'])
dfvol$return18[111] <- mean(na.omit(TATASTEEL_ret[,1])['2018/'])
dfvol$return18[112] <- mean(na.omit(TCS_ret[,1])['2018/'])
dfvol$return18[113] <- mean(na.omit(TECHM_ret[,1])['2018/'])
dfvol$return18[114] <- mean(na.omit(TV18BRDCST_ret[,1])['2018/'])
dfvol$return18[115] <- mean(na.omit(TVSMOTOR_ret[,1])['2018/'])
dfvol$return18[116] <- mean(na.omit(TVTODAY_ret[,1])['2018/'])
dfvol$return18[117] <- mean(na.omit(UBL_ret[,1])['2018/'])
dfvol$return18[118] <- mean(na.omit(UFO_ret[,1])['2018/'])
dfvol$return18[119] <- mean(na.omit(UNIONBANK_ret[,1])['2018/'])
dfvol$return18[120] <- mean(na.omit(UNITECH_ret[,1])['2018/'])
dfvol$return18[121] <- mean(na.omit(VEDL_ret[,1])['2018/'])
dfvol$return18[122] <- mean(na.omit(WELCORP_ret[,1])['2018/'])
dfvol$return18[123] <- mean(na.omit(WIPRO_ret[,1])['2018/'])
dfvol$return18[124] <- mean(na.omit(YESBANK_ret[,1])['2018/'])
dfvol$return18[125] <- mean(na.omit(ZEEL_ret[,1])['2018/'])
dfvol$return18[126] <- mean(na.omit(ZEEMEDIA_ret[,1])['2018/'])

colnames(dfvol)[1] <- "Symbol"
datalist <- rbind(pvtbankl,autol,financel,fmcgl,itl,medial,metall,pharmal,psubankl,realtyl)
datalist1 <- merge(datalist,dfvol, by = "Symbol", all.x = TRUE, all.y = FALSE)
write.csv(datalist1, "datalist1.csv")




APOLLOTYRE = data.frame(Date= index(APOLLOTYRE.NS),coredata(APOLLOTYRE.NS))
ASHOKLEY = data.frame(Date= index(ASHOKLEY.NS),coredata(ASHOKLEY.NS))
PRESTIGE = data.frame(Date= index(PRESTIGE.NS),coredata(PRESTIGE.NS))
OBEROIRLTY = data.frame(Date= index(OBEROIRLTY.NS),coredata(OBEROIRLTY.NS))
JUBLFOOD = data.frame(Date= index(JUBLFOOD.NS),coredata(JUBLFOOD.NS))
UBL = data.frame(Date= index(UBL.NS),coredata(UBL.NS))
PFC = data.frame(Date= index(PFC.NS),coredata(PFC.NS))
RECLTD = data.frame(Date= index(RECLTD.NS),coredata(RECLTD.NS))
NIITTECH = data.frame(Date= index(NIITTECH.NS),coredata(NIITTECH.NS))
MINDTREE = data.frame(Date= index(MINDTREE.NS),coredata(MINDTREE.NS))
TVTODAY = data.frame(Date= index(TVTODAY.NS),coredata(TVTODAY.NS))
INOXLEISUR = data.frame(Date= index(INOXLEISUR.NS),coredata(INOXLEISUR.NS))
WELCORP = data.frame(Date= index(WELCORP.NS),coredata(WELCORP.NS))
HINDALCO = data.frame(Date= index(HINDALCO.NS),coredata(HINDALCO.NS))
AUROPHARMA = data.frame(Date= index(AUROPHARMA.NS),coredata(AUROPHARMA.NS))
BIOCON = data.frame(Date= index(BIOCON.NS),coredata(BIOCON.NS))
INDIANB = data.frame(Date= index(INDIANB.NS),coredata(INDIANB.NS))
BANKBARODA = data.frame(Date= index(BANKBARODA.NS),coredata(BANKBARODA.NS))
FEDERALBNK = data.frame(Date= index(FEDERALBNK.NS),coredata(FEDERALBNK.NS))
AXISBANK = data.frame(Date= index(AXISBANK.NS),coredata(AXISBANK.NS))

pricedata <- merge(APOLLOTYRE,ASHOKLEY, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,PRESTIGE, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,OBEROIRLTY, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,JUBLFOOD, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,UBL, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,PFC, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,RECLTD, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,NIITTECH, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,MINDTREE, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,TVTODAY, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,INOXLEISUR, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,WELCORP, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,HINDALCO, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,AUROPHARMA, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,BIOCON, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,INDIANB, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,BANKBARODA, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,FEDERALBNK, by ="Date",all.x = TRUE)
pricedata <- merge(pricedata,AXISBANK, by ="Date",all.x = TRUE)



write.csv(pricedata,"C:/Lokesh/Project/Data/pricedata.csv")
write.csv(pricedata,"C:/Lokesh/Project/Data/valdata.csv")

