class LiquorSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :alcohol, :drinks
    has_many :drinks, through: :liquor_drinks
end