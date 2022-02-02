class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path, success: t('defaults.messages.created', item: Task.model_name.human)
    else
      flash.now['danger'] = t('defaults.messages.not_created', item: Task.model_name.human)
    end
  end 

  private

  def task_params
    params.require(:task).permit(:name, :status)
  end
end
