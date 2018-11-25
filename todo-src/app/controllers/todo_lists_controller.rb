class TodoListsController < InheritedResources::Base

  private

    def todo_list_params
      params.require(:todo_list).permit(:completed, :task)
    end
end

