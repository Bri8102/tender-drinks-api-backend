class DrinkSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :flavor, :ingredient, :prep, :image, :liquors
    has_many :liquors, through: :liquor_drinks
end