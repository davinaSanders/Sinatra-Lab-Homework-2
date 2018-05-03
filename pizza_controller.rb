require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( "./models/pizza_order.rb" )
# READ orders


get "/pizza_orders" do
  @orders = PizzaOrder.all()
  erb(:index)
end

get "/pizza_orders/new" do
  erb(:new)
end

get "/pizza_orders/:id/delete" do
  erb (:delete)
end

get "/pizza_orders/:id/edit" do
  @order = PizzaOrder.find(params[:id])
  erb (:edit)
end

post "/pizza_orders/:id" do
  @order = PizzaOrder.new(params)
  @order.update()
  redirect "/pizza_orders"
end

post "/pizza_orders" do
@order3 = PizzaOrder.new(params)
@order3.update()
erb (:create)
end

post "/pizza_orders/:id/delete" do
  @order1 = PizzaOrder.find(params[:id])
  @order1.delete()
  redirect "/pizza_orders"
end

post "/pizza_orders" do
@order2 = PizzaOrder.new(params)
@order2.save()
erb (:create)
end

# SHOW order

get "/pizza_orders/:id" do
  @order = PizzaOrder.find(params[:id])
  erb(:show)
end
# CREATE orders


# UPDATE existing orders

# DELETE orders
