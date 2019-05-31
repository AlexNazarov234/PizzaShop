#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './lib/my_procedures'

set :database, "sqlite3:pizzashop.db" 

class Product < ActiveRecord::Base
end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about
end

post '/cart' do
	orders_input = params[:orders]
	@orders = parse_orders_line orders_input
  erb :cart
end

