class DeadlinesController < ApplicationController
  def new
    @task = Task.find(3)
  end
end
