class Employee < ApplicationRecord
    belongs_to :dog
    validates :dog_id, :alias, :title, uniqueness: true
    validates :first_name, :last_name, :alias, :title, :office, :img_url, presence: true
    ##TODO need validation for employee whethere dogs has owner already or not.

    def full_name
        self.first_name + " " + self.last_name
    end
end
