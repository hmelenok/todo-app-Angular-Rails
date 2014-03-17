class TasksController < ApplicationController
  def index
    
  end
  def create
    task = task_list.tasks.create!(safe_params)
    render json: task, status: 201
  end
  
  def update
    task.update_attributes(safe_params)
    render nothing: true, status: 204
  end
  
  def destroy
    
  end
  private
  def safe_params
    params.require(:task).permit(:description, :priority, :completed)
  end
end
