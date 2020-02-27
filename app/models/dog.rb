class Dog < ApplicationRecord
    has_many :employees

    def self.sort_dog 
        Dog.all.sort {|dog_1, dog_2| dog_1 <=> dog_2}
    end
end
