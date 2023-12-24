class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @deadlines = Deadline.where(completed: nil)
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
      @task_deadline.due = nil
      render :new, status: :unprocessable_entity
    end
  end

  def task_params
    params.require(:task_deadline).permit(:due, :completed, :title, :category_id, :url, :note).merge(user_id: current_user.id)
  end

end