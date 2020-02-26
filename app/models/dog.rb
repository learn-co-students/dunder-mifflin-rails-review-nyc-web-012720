class Dog < ApplicationRecord
    has_many :employees

    validates :name, :breed, :age, presence: true 
end
