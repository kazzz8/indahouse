class TasksController < ApplicationController
  def index
  end

  def new
    @task_deadline = TaskDeadline.new
  end

  def create
    @task_deadline = TaskDeadline.new(task_params)
    if @task_deadline.valid?
      @task_deadline.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def task_params
    params.require(:task_deadline).permit(:deadline, :completed, :title, :category_id, :url, :note).merge(user_id: current_user.id)
  end

end
