class List < ApplicationRecord
    belongs_to :user
    has_many :items

    validates :name, presence: true #this requires that a name attribute be present, other rails validations exist too
end
