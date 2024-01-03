class DeadlinesController < ApplicationController
  def new
    @task = Task.find(params[:task_id])
    @deadline = Deadline.new
  end
end
