class EmployeesController < ApplicationController

	def index
      @employees = Employee.all
	end

	def new
	   @employee = Employee.new
	end
    
    def create
    	@employee = Employee.new(employee_params)
    	if @employee.save
    		redirect_to employees_path, notice: "Employee has been created Successfully "
    	else
    	  render :new 
    	end	
    end 

    def edit
        @employee = Employee.find(params[:id])
    end
    def update
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
            redirect_to employees_path, notice: "employee has been update Successfully"
        else
          render 'edit'  
        end  
    end

    def show
        @employee = Employee.find(params[:id])
    end 

     def destroy
        @employee = Employee.find(params[:id])
        if @employee.destroy
            redirect_to employees_path, notice: "employee has been Delete Successfully"
        end
    end 

    private
    
    def employee_params
    	params.require(:employee).permit(:first_name, :last_name,:personal_email, :address_line_1, :city,:state,:country,:pincode,:mobile_number,:date_of_birth,:job_title)
    end
end
