class DogsController < ApplicationController
    def index
        @dogs = Dog.all
        @dogs.sort{|a,b| a.employees.count <=> b.employees.count}
    end

    def show 
        @dog = Dog.find(params[:id])
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end
end
