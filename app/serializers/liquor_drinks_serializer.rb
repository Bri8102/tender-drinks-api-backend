class LiquorDrinksSerializer
    include FastJsonapi::ObjectSerializer
    attributes :liquor, :drink
    belongs_to :liquor
    belongs_to :drink
end