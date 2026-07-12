import pandas as pd
from prophet import Prophet

df = pd.read_csv('DataCoSupplyChainDataset.csv', 
                 encoding='cp1252')

print("Sales column sample:")
print(df['Sales'].head(10))
print(f"Total sales sum: {df['Sales'].sum()}")

df['order date (DateOrders)'] = pd.to_datetime(
    df['order date (DateOrders)'],
    dayfirst=True
)

# Extract date only  no timestamp
df['order_date'] = df['order date (DateOrders)'].dt.date

daily = df.groupby('order_date')['Sales']\
    .sum().reset_index()
daily.columns = ['ds', 'y']
daily['ds'] = pd.to_datetime(daily['ds'])

print(f"\nDaily revenue sample:")
print(daily.tail(5))

model = Prophet(
    yearly_seasonality=True,
    weekly_seasonality=True,
    daily_seasonality=False
)
model.fit(daily)

future = model.make_future_dataframe(periods=30)
forecast = model.predict(future)

forecast_30 = forecast[
    forecast['ds'] > daily['ds'].max()
][['ds', 'yhat', 'yhat_lower', 'yhat_upper']]

forecast_30.to_csv('forecast_30d.csv', index=False)
print(f"\nDone! {len(forecast_30)} rows")
print(forecast_30.head())
