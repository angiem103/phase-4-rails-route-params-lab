class StudentsController < ApplicationController

  def index
    if params[:name]
      students = Student.first
    else
      students = Student.all
   end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
