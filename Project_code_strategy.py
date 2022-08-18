############################### Import libraries ##############################################
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import pandas_datareader as pdr
import os
from statsmodels.tsa.stattools import adfuller
from statsmodels.api import OLS
import math
import talib as ta
import matplotlib.pyplot as plt
import seaborn as sns

############################# Import and Clean Dataset ##############################################
os.getcwd()
os.chdir("C:\\Lokesh\\Project\\Data")
pricedata = pd.read_csv("pricedata.csv")

priceseries = pd.DataFrame(pricedata.iloc[:,[1,5,11,17,23,29,35,41,47,53,59,65,71,77,83,89,95,101,107,113,119]])


priceseries.index = priceseries['Date']
del priceseries['Date']
priceseries = priceseries.dropna()
retseries = priceseries.apply(lambda x : np.log(x/x.shift(1))*100)
retseries = retseries.dropna()

############################ Summary Statistics #####################################################
summary = retseries.describe()
summary.to_csv('summary.csv')
retseries.skew()
retseries.kurtosis()


retseries.head(0)
retseries.columns = ['apollotyrer', 'ashokleyr', 'prestiger', 'oberoirltyr', 'jublfoodr',
                     'ublr', 'pfcr', 'recltdr', 'niittechr', 'mindtreer', 'tvtodayr', 'inoxleisurr', 
                     'welcorpr', 'hindalcor', 'auropharmar', 'bioconr', 'indianbr', 'bankbarodar', 
                     'federalbnkr', 'axisbankr'
]



#define function for ADF test
from statsmodels.tsa.stattools import adfuller
def adf_test(timeseries):
    #Perform Dickey-Fuller test:
    print ('Results of Dickey-Fuller Test:')
    dftest = adfuller(timeseries, autolag='AIC')
    dfoutput = pd.Series(dftest[1], index=['p-value'])
    print (dfoutput)

################################## Volume and price based short selling Trade #################################################################
pricedata1 = pricedata.dropna()
priceseries.columns
df =  pricedata1[["Date","APOLLOTYRE.NS.Open","APOLLOTYRE.NS.Close","APOLLOTYRE.NS.Volume"]]
df =  pricedata1[["Date","ASHOKLEY.NS.Open","ASHOKLEY.NS.Close","ASHOKLEY.NS.Volume"]]
df =  pricedata1[["Date","PRESTIGE.NS.Open","PRESTIGE.NS.Close","PRESTIGE.NS.Volume"]]
df =  pricedata1[["Date","OBEROIRLTY.NS.Open","OBEROIRLTY.NS.Close","OBEROIRLTY.NS.Volume"]]
df =  pricedata1[["Date","JUBLFOOD.NS.Open","JUBLFOOD.NS.Close","JUBLFOOD.NS.Volume"]]
df =  pricedata1[["Date","UBL.NS.Open","UBL.NS.Close","UBL.NS.Volume"]]
df =  pricedata1[["Date","PFC.NS.Open","PFC.NS.Close","PFC.NS.Volume"]]
df =  pricedata1[["Date","RECLTD.NS.Open","RECLTD.NS.Close","RECLTD.NS.Volume"]]
df =  pricedata1[["Date","NIITTECH.NS.Open","NIITTECH.NS.Close","NIITTECH.NS.Volume"]]
df =  pricedata1[["Date","MINDTREE.NS.Open","MINDTREE.NS.Close","MINDTREE.NS.Volume"]]
df =  pricedata1[["Date","TVTODAY.NS.Open","TVTODAY.NS.Close","TVTODAY.NS.Volume"]]
df =  pricedata1[["Date","INOXLEISUR.NS.Open","INOXLEISUR.NS.Close","INOXLEISUR.NS.Volume"]]
df =  pricedata1[["Date","WELCORP.NS.Open","WELCORP.NS.Close","WELCORP.NS.Volume"]]
df =  pricedata1[["Date","HINDALCO.NS.Open","HINDALCO.NS.Close","HINDALCO.NS.Volume"]]
df =  pricedata1[["Date","AUROPHARMA.NS.Open","AUROPHARMA.NS.Close","AUROPHARMA.NS.Volume"]]
df =  pricedata1[["Date","BIOCON.NS.Open","BIOCON.NS.Close","BIOCON.NS.Volume"]]
df =  pricedata1[["Date","INDIANB.NS.Open","INDIANB.NS.Close","INDIANB.NS.Volume"]]
df =  pricedata1[["Date","BANKBARODA.NS.Open","BANKBARODA.NS.Close","BANKBARODA.NS.Volume"]]
df =  pricedata1[["Date","FEDERALBNK.NS.Open","FEDERALBNK.NS.Close","FEDERALBNK.NS.Volume"]]
df =  pricedata1[["Date","AXISBANK.NS.Open","AXISBANK.NS.Close","AXISBANK.NS.Volume"]]




df.columns = ['Date','open','close','volume']
df['return'] = np.log(df['close']/df['open'])


# Moving Average volume
df['mvolume'] = df.volume.rolling(3).mean()
df['mvolume'] = df['mvolume'].shift(1)

# Moving Average price
df['mprice'] = df.close.rolling(3).mean()
df['mprice'] = df['mprice'].shift(1)

# generate signal if current volume below last 3 days of average volume and current price below last 3 days of average price, short sell
df['signal'] = ((df.volume < df.mvolume) & (df.close < df.mprice))
df['shortsignal'] = 0  
df.loc[df.signal,'shortsignal']= -1  
df['pnl'] = df['return'] * df.shortsignal.shift(1)
df.pnl.sum()

#### data to compute hit ratio
hit.positivetrades[19] = len(df[df.pnl > 0])
hit.totaltrades[19] = len(df[df.pnl != 0])-1

#### cumulative PNL
df.pnl.iloc[[0]] = 1
df['cumpnl'] = df.pnl.cumsum()

#### create copy of dataset
apollos = df.copy()
ashokleys = df.copy()
prestiges = df.copy()
oberois = df.copy()
jublfoods = df.copy()
ubls = df.copy()
pfcs = df.copy()
recltds = df.copy()
niits = df.copy()
minds = df.copy()
tvtodays = df.copy()
inoxs = df.copy()
welcorps = df.copy()
hindalcos = df.copy()
auros = df.copy()
biocons = df.copy()
indianbs = df.copy()
barodas = df.copy()
federals = df.copy()
axis = df.copy()

hit.to_csv('hitratio.csv')

totalwealth = pd.DataFrame(index=range(0,20),columns=['cumpnl'], dtype='float')
totalwealth.cumpnl[0] = apollos['cumpnl'].iloc[-1]
totalwealth.cumpnl[1] =ashokleys['cumpnl'].iloc[-1]
totalwealth.cumpnl[2] =prestiges['cumpnl'].iloc[-1]
totalwealth.cumpnl[3] =oberois['cumpnl'].iloc[-1]
totalwealth.cumpnl[4] =jublfoods['cumpnl'].iloc[-1]
totalwealth.cumpnl[5] =ubls['cumpnl'].iloc[-1]
totalwealth.cumpnl[6] =pfcs['cumpnl'].iloc[-1]
totalwealth.cumpnl[7] =recltds['cumpnl'].iloc[-1]
totalwealth.cumpnl[8] =niits['cumpnl'].iloc[-1]
totalwealth.cumpnl[9] =minds['cumpnl'].iloc[-1]
totalwealth.cumpnl[10] =tvtodays['cumpnl'].iloc[-1]
totalwealth.cumpnl[11] =inoxs['cumpnl'].iloc[-1]
totalwealth.cumpnl[12] =welcorps['cumpnl'].iloc[-1]
totalwealth.cumpnl[13] =hindalcos['cumpnl'].iloc[-1]
totalwealth.cumpnl[14] =auros['cumpnl'].iloc[-1]
totalwealth.cumpnl[15] =biocons['cumpnl'].iloc[-1]
totalwealth.cumpnl[16] =indianbs['cumpnl'].iloc[-1]
totalwealth.cumpnl[17] =barodas['cumpnl'].iloc[-1]
totalwealth.cumpnl[18] =federals['cumpnl'].iloc[-1]
totalwealth.cumpnl[19] =axis['cumpnl'].iloc[-1]

totalwealth.to_csv('totalwealth.csv')


############################ Mean Reversion ########################################################################

## Change stocks here and run the code again to get specific stocks results
df =  pricedata1[["TVTODAY.NS.Close","INOXLEISUR.NS.Close"]]

df.columns = ['y','x']
Y = df['y']
X = df['x']

spread = Y/X
adf_test(spread)


df['spread'] = spread
# Moving Average
df['moving_average'] = df.spread.rolling(5).mean()
# Moving Standard Deviation
df['moving_std_dev'] = df.spread.rolling(5).std()

df['upper_band'] = df.moving_average + 1*df.moving_std_dev
df['lower_band'] = df.moving_average - 1*df.moving_std_dev

df['long_entry'] = df.spread < df.lower_band   
df['long_exit'] = df.spread >= df.moving_average

df['positions_long'] = np.nan  
df.loc[df.long_entry,'positions_long']= 1  
df.loc[df.long_exit,'positions_long']= 0  

df.positions_long = df.positions_long.fillna(method='ffill')  


df['short_entry'] = df.spread > df.upper_band   
df['short_exit'] = df.spread <= df.moving_average

df['positions_short'] = np.nan  
df.loc[df.short_entry,'positions_short']= -1  
df.loc[df.short_exit,'positions_short']= 0  

df.positions_short = df.positions_short.fillna(method='ffill')  

df['positions'] = df.positions_long + df.positions_short

df['yr'] = np.log(df['y']/df['y'].shift(1))
df['xr'] = np.log(df['x']/df['x'].shift(1))

df['pnly'] = df.positions.shift(1) * df.yr
df['pnlx'] = df.positions.shift(1) * df.xr*-1

#### data to compute hit ratio
len(df[df.pnly > 0])
len(df[df.pnly != 0])-1

len(df[df.pnlx > 0])
len(df[df.pnlx != 0])-1

#### Cumulative PNL as amounted invested initially 1
df.pnly.iloc[[0]] = 1
df.pnlx.iloc[[0]] = 1
df['cumpnly'] = df.pnly.cumsum()
df['cumpnlx'] = df.pnlx.cumsum()
df['cumpnl'] = df['cumpnly'] + df['cumpnlx']
df.cumpnl.plot(label='return', figsize=(8,4))  

df['cumpnl'].iloc[-1]

####### Save datasets
pfcrec_mr = df.copy()
tvinox_mr = df.copy()

#df = pfcrec_mr.copy()


################################## Trend following ###############################################

df =  pricedata1[["NIITTECH.NS.Close"]]
df.columns = ['y']
df['returns'] = np.log(df['y'] / df['y'].shift(1))  # 12

data = df.copy()

# RSI
data['RSI'] = ta.RSI(data.y, timeperiod=21)
#data[['RSI']].plot(figsize=(10,5))

data['lsignal'] = (data.RSI < 30)
data['ssignal'] = (data.RSI > 70)

data['shortsignal'] = 0  
data.loc[data.ssignal,'shortsignal']= -1  

data['longsignal'] = 0  
data.loc[data.lsignal,'longsignal']= 1  

data['positions'] = data.longsignal + data.shortsignal


data['pnl'] = data['returns'] * data.positions.shift(1)
data.pnl.sum()

data.pnl.iloc[[0]] = 1
data['cumpnl'] = data.pnl.cumsum()

data.cumpnl.plot(label='spread', figsize=(8,4))  
data.cumpnl.iloc[[-1]]


#################################################################################################
