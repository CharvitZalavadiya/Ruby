def stock_picker(prices)
  best_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |buy_price, buy_day|
    (buy_day + 1).upto(prices.length - 1) do |sell_day|
      sell_price = prices[sell_day]
      profit = sell_price - buy_price

      if profit > best_profit
        best_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  return best_days
end

# Example usage:
print stock_picker([17,3,6,9,15,8,6,10])