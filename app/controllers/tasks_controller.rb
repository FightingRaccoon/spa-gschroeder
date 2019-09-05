class TasksController < ApplicationController
    def index
      # list all Task that are stored
        render json: Task.order(:id)
      end
    
      # method for updating task completed or not
      def update
        # call for specific task id 
        task = Task.find(params[:id])
        # checks update is in the task prarams
        task.update_attributes(task_params)
        # updates id task on page
        render json: task
      end
    
      private
    # method for defining requirments of task
      def task_params
    # specified requirments
        params.require(:task).permit(:done)
      end
end
