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
    @per_page = 20.0
    @grades = Grade.limit(@per_page).offset(@per_page * current_page)
  end

  def total_pages
    (Grade.count / @per_page).ceil
  end

  def current_page
    page = params[:page].to_i
    @page = if page < total_pages && page > 0
      page
    else
      0
    end
  end

  helper_method :total_pages
  helper_method :current_page


  def new
    @grade = Grade.new(teacher_id: current_user.id)
  end

  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      redirect_to grades_path
    else
      render :new
    end
  end
``
  def edit
    @grade = Grade.find(params["id"])
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
    params.require(:grade).permit(:student_id, :letter_grade, :date_of_grade, :grade_type, :title, :comment, :teacher_id)
  end
end
