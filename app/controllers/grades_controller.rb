class GradesController < ApplicationController
  # before_action :authorized!, only: :new
  #
  # def authorized!
  #   if !current_user
  #     redirect_to root_path
  #     return
  #   end
  # end

  def index
    @grades = Grade.all
    render :index
  end

  def new
    @grade = Grade.new(teacher_id: current_user.id)
  end

  def create
    # Will call setter for each of the hash key value pairs.
    @grade = Grade.new(grade_params)

    if @grade.save
      redirect_to grades_path
    else
      render :new
    end
  end

  def show
    @grade = Grade.find(params["id"])
    render :show
  end

  def destroy
    @grade = Grade.find(params["id"])
    @grade.destroy
    redirect_to grades_path
  end

  def grade_params
    # Whitelist params
    # Returns a hash with only the keys listed in the permit method.
    params.require(:grade).permit(:student_id, :letter_grade, :date_of_grade, :grade_type)
  end
end
