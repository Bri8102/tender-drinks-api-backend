class Api::V1::LiquorDrinksController < ApplicationController
   #     def index
#         liquor_drinks = LiquorDrink.all 
#         render json: LiquorDrinksSerializer.new(liquor_drinks)
#     end

#     def show
#         liquor_drink = LiquorDrink.find(params[:id])
#         options = {
#             include: [:drink, :liquor]
#         }
#         render json: LiquorDrinksSerializer.new(liquor_drink, options)
#     end

#     def create
#         binding.pry
#         drink = Drink.find_or_create_by( name: params[:name] ,
#             flavor: ,
#             ingredient: ,
#             prep: )
#         liquor = Liquor.find_or_create_by( name:, alcohol:)
#         liquor_drink = LiquorDrink.create(drink_id: drink.id , liquor_id: liquor.id)

#         render json: {
#             drink: DrinkSerializer.new(drink),
#             liquor:  LiquorSerializer.new(liquor),
#             liquor_drink: LiquorDrinksSerializer.new(liquor_drink)
#         }
#     end
end