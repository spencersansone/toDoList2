class TasksController < ApplicationController

	def new
	end
	
	def create
	  @task = Task.new(task_params)
	 
	  @task.save
	  redirect_to @task
	end
	def index
		@tasks = Task.all
	end
	 
	def show
	@task = Task.find(params[:id])
	end
	
	private
		def task_params
			params.require(:task).permit(:title, :description, :done)
		end
end
