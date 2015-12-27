class StudentsController < ApplicationController
  def student_new
  	@teacher = Teacher.find(params[:id])
  	@student = Student.new 
  end

  def index
  	@students = Student.all
  end

  def show
  	@students = Student.all 
  end

  def create
  	@teacher = Teacher.find(params[:id])
  	@student = @teacher.students << Student.create(student_params)
  	if @student
  		redirect_to teachers_path
  	end
  end

  private
  def student_params
  	params.require(:student).permit(:name,:age)  	
  end
end
