# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'CSV'

symbols_file = 'db/seeds.csv'
symbol_count = CSV.read(symbols_file).length

bar = ProgressBar.create(:title => "Importing Symbols", :starting_at => 0, :total => symbol_count)
CSV.foreach(symbols_file) do |row|
  symbol = row[0]
  Stock.find_or_create_by(symbol: symbol)
  bar.increment
end