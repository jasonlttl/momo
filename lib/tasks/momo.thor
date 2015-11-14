#require 'stock_quote'
require 'thor/rails'

class Momo < Thor

  include Thor::Rails

  desc 'get', 'Fetch stocks using stock:quote'
  def get(symbol)
    #stock = StockQuote::Stock.quote(symbol)
    #puts stock.inspect

    stock = Stock.find_or_create_by(symbol: symbol)
    results = stock.fetch_closes(30)

    puts results.inspect
  end
end