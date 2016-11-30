class StudentsController < ApplicationController
  def index
    @students = Student.all
    render :index
  end

  def new
    @student = Student.new(user_id: current_user.id)
  end

  def create
    # Will call setter for each of the hash key value pairs.
    @student = Student.new(student_params)

    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def show
    @student = Student.find(params["id"])
    render :show
  end

  def destroy
    @student = Student.find(params["id"])
    @student.destroy
    redirect_to students_path
  end

  def student_params
    params.require(:student).permit(:user_id)
  end
end
