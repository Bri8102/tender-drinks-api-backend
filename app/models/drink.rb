class Drink < ApplicationRecord
    has_many :liquor_drinks, dependent: :destroy
    has_many :liquors, through: :liquor_drinks

    validates :name, presence: true
    validates :name, uniqueness: { case_sensitive: false }

    scope :ordered_by_name, -> { order(name: :asc) }
end
