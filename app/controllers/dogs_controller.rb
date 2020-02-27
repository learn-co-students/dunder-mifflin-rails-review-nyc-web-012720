class DogsController < ApplicationController
    def index
        @dogs = Dog.sort_dog
    end

    def show
    @dog = Dog.find(params[:id])
    @employees = @dog.employees
    end
end
