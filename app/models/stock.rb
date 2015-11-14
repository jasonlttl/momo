require 'stock_quote'
class Stock < ActiveRecord::Base

  has_many :closes

  def fetch_closes(days_old)

    results = StockQuote::Stock.history(symbol, Date.today - days_old, Date.today)
    results.each do |result|
      close = Close.find_or_create_by(stock_id: id, date: result.date)
      close.open = result.open
      close.close = result.close
      close.adj_close = result.adj_close
      close.high = result.high
      close.volume = result.volume
      close.save
    end

  end
end
