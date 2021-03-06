class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end


  def show
    @task = Task.find(params[:id])
  end


  def new
    @task = Task.new
  end


  def edit
      @task = Task.find(params[:id])
  end


  def create
    @task = Task.new(task_params)
      if @task.save
        redirect_to @task
      else
        render 'new'
      end
  end


  def update
    @task = Task.find(params[:id])
      if @task.update(task_params)
        redirect_to @task
      else
        render 'edit'
      end
   end

# the destroy method may be refered to as delete or complete in app
 def destroy
   @task = Task.find(params[:id])
    @task.destroy
     redirect_to tasks_path
 end


private
  def task_params
    params.require(:task).permit(:who, :name, :details)
  end
end
