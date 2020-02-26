class DogsController < ApplicationController

    def index
        @dogs = Dog.all.sort{|a,b| b.employees.count <=> a.employees.count}
    end

    def show
        @dog = Dog.find(params[:id])
    end
end
