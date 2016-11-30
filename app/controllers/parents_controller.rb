class ParentsController < ApplicationController
  def index
    @parents = Parent.all
    render :index
  end

  def new
    @parent = Parent.new(user_id: User.create.id)
  end

  def create
    # Will call setter for each of the hash key value pairs.
    @parent = Parent.new(parent_params)

    if @parent.save
      redirect_to parents_path
    else
      render :new
    end
  end

  def show
    @parent = Parent.find(params["id"])
    render :show
  end

  def destroy
    @parent = Parent.find(params["id"])
    @parent.destroy
    redirect_to parents_path
  end

  def parent_params
    params.require(:parent).permit( :student_id, user_id: [ :id, :full_name, :password])
  end
end
