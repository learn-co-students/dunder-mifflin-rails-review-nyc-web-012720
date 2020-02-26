class Employee < ApplicationRecord
    belongs_to :dog
    validates :alias, :title, uniqueness: true 

    def to_s 
        self.first_name + " " + self.last_name
    end

    def dog_name=(name)
        self.dog = Dog.find_or_create_by(name: name)
    end

    def dog_name 
        self.dog ? self.dog.name : nil
    end
end
