# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151114192223) do

  create_table "closes", force: :cascade do |t|
    t.integer  "stock_id"
    t.date     "date"
    t.float    "open"
    t.float    "high"
    t.float    "low"
    t.float    "close"
    t.float    "volume"
    t.float    "adj_close"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string   "symbol"
    t.float    "ask"
    t.integer  "average_daily_volume"
    t.float    "bid"
    t.float    "ask_realtime"
    t.float    "bid_realtime"
    t.float    "book_value"
    t.float    "change_percent_change"
    t.float    "change"
    t.float    "commission"
    t.float    "change_realtime"
    t.float    "after_hours_change_realtime"
    t.float    "dividend_share"
    t.date     "last_trade_date"
    t.date     "trade_date"
    t.float    "earnings_share"
    t.string   "error_indicationreturnedforsymbolchangedinvalid"
    t.float    "eps_estimate_current_year"
    t.float    "eps_estimate_next_year"
    t.float    "eps_estimate_next_quarter"
    t.float    "days_low"
    t.float    "days_high"
    t.float    "year_low"
    t.float    "year_high"
    t.float    "holdings_gain_percent"
    t.float    "annualized_gain"
    t.float    "holdings_gain"
    t.float    "holdings_gain_percent_realtime"
    t.float    "holdings_gain_realtime"
    t.string   "more_info"
    t.float    "order_book_realtime"
    t.float    "market_capitalization"
    t.float    "market_cap_realtime"
    t.float    "ebitda"
    t.float    "change_from_year_low"
    t.float    "percent_change_from_year_low"
    t.float    "last_trade_realtime_with_time"
    t.float    "change_percent_realtime"
    t.float    "change_from_year_high"
    t.float    "percent_change_from_year_high"
    t.float    "last_trade_with_time"
    t.float    "last_trade_price_only"
    t.float    "high_limit"
    t.float    "low_limit"
    t.float    "days_range"
    t.float    "days_range_realtime"
    t.float    "fiftyday_moving_average"
    t.float    "two_hundredday_moving_average"
    t.float    "change_from_two_hundredday_moving_average"
    t.float    "percent_change_from_two_hundredday_moving_average"
    t.float    "change_from_fiftyday_moving_average"
    t.float    "percent_change_from_fiftyday_moving_average"
    t.string   "name"
    t.string   "notes"
    t.float    "open"
    t.float    "previous_close"
    t.float    "price_paid"
    t.float    "changein_percent"
    t.float    "price_sales"
    t.float    "price_book"
    t.date     "ex_dividend_date"
    t.float    "pe_ratio"
    t.date     "dividend_pay_date"
    t.float    "pe_ratio_realtime"
    t.float    "peg_ratio"
    t.float    "price_eps_estimate_current_year"
    t.float    "price_eps_estimate_next_year"
    t.integer  "shares_owned"
    t.float    "short_ratio"
    t.datetime "last_trade_time"
    t.float    "ticker_trend"
    t.float    "oneyr_target_price"
    t.integer  "volume"
    t.float    "holdings_value"
    t.float    "holdings_value_realtime"
    t.float    "year_range"
    t.float    "days_value_change"
    t.float    "days_value_change_realtime"
    t.string   "stock_exchange"
    t.float    "dividend_yield"
    t.float    "percent_change"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

end
