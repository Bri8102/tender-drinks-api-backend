class Liquor < ApplicationRecord
    has_many :liquor_drinks, dependent: :destroy
    has_many :drinks, through: :liquor_drinks

    validates :name, presence: true
    validates :name, uniqueness: { case_sensitive: false }

end
