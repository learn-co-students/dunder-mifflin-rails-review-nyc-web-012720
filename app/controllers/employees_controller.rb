class EmployeesController < ApplicationController
    before_action :employee_find, only:[:show, :edit, :update]
    
    def index
        @employees = Employee.all
    end

    def show
        # byebug
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
        @errors = flash[:error]
    end
    
    def create
        @employee = Employee.create(employee_params)

        if @employee.valid?
            redirect_to employee_path(@employee)
        else
            flash[:error] = @employee.errors.full_messages
            redirect_to new_employee_path 
        end
    end

    def edit
        @dogs = Dog.all
        @errors = flash[:error]
    end
 
    def update
        @employee.update(employee_params)
        if @employee.valid?
        redirect_to employee_path(@employee)
        else  
            flash[:error] = @employee.errors.full_messages
            redirect_to edit_employee_path 
        end
    end

    private

    def employee_find
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end
    
end
