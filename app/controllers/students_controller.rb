class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name)) 
    @student.created_at = Time.now
    @student.updated_at = Time.now
    @student.save
    redirect_to student_path(@student)
  end

end
