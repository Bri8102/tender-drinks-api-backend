class Api::V1::DrinksController < ApplicationController
    def index
        drinks = Drink.ordered_by_name
        render json: drinks.to_json(include: [:liquors]), status: 200 
    end

    def show
        drink = Drink.find_by(id: params[:id])
        options = {
            include: [:liquors]
          }
        render json: DrinkSerializer.new(drink, options), status: 200
    end

    def create
        current_liquor = Liquor.find_by_name(params[:liquor])
        # drink = current_liquor.drinks.create(drink_params)
        drink = current_liquor.drinks.new(drink_params)
        if drink.save
            render json: DrinkSerializer.new(drink), status: 200
        end
    end

    # def update
    #     drink = Drink.find(params[:id])
    #     drink.update(drink_params)
    #     render json: DrinkSerializer.new(drink)
    # end

    def destroy  
        drink = Drink.find_by(id:params[:id])
        drink.destroy
        render json: drink
    end

    private

    def drink_params
        params.require(:drink).permit(:name, :flavor, :ingredient, :prep, :image)
    end
end
