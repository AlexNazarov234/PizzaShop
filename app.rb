#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './lib/new_proc'

set :database, "sqlite3:pizzashop.db" 

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about
end

post '/cart' do
	@orders_input = params[:orders_input]
	@items = parse_orders_line @orders_input

	@items.each do |item| 	
		item[0] = Product.find(item[0])
	end

	@o = {}

  erb :cart
end

post '/place_order' do
  erb "Save order"
end