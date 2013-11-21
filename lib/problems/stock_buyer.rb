module StockBuyer
  def self.buy_and_sell(*prices)
    hash = {
      lowest: 1/0.0,
      highest: -1/0.0,
      current_profit: -1/0.0
    }

    prices.each_with_index do |price, i|
      if price < hash[:lowest]
        hash[:lowest] = hash[:highest] = price
        hash[:lowest_index] = hash[:highest_index] = i
      elsif price > hash[:highest]
        hash[:highest] = price
        hash[:highest_index] = i
      end

      new_profit = hash[:highest] - hash[:lowest]
      if new_profit > hash[:current_profit]
        hash[:current_profit] = new_profit
        hash[:current_buy] = hash[:lowest_index]
        hash[:current_sell] = hash[:highest_index]
      end
    end

    { buy_at: hash[:current_buy], sell_at: hash[:current_sell], profit: hash[:current_profit] }
  end
end
