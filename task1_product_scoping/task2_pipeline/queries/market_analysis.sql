SELECT
    coin_name,
    current_price,
    market_cap,
    market_strength,
    price_change_percentage_24h
FROM
    `crypto-market-analysis-497608.crypto_market_data.crypto_prices`
ORDER BY
    market_strength DESC
LIMIT 10;
