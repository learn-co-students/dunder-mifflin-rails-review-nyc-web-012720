class EmployeesController < ApplicationController
    before_action :find_employee, only: [:edit, :update, :show]

    def index
        @employees = Employee.all.sort {|a,b| a.last_name <=> b.last_name}
    end

    def show
       
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params)
        if @employee.valid?
            redirect_to @employee
        else
            flash[:errors] = @employee.errors.full_messages
            redirect_to new_employee_path
        end
    end

    def edit
        
    end

    def update
        @updated_employee = @employee.update(employee_params)
        
        if @updated_employee
            redirect_to @employee
        else
            flash[:errors] = @employee.errors.full_messages
            redirect_to edit_employee_path
        end

    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :title, :alias, :office, :img_url, :dog_id)
    end

    def find_employee
        @employee = Employee.find(params[:id])
    end
end
