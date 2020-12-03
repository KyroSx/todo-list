class TodoController < ApplicationController
  def create
    @todo = Todo.new todo_params

    return created @todo if @todo.save

    bad_request @todo.errors
  end

  def todo_params
    params.permit(:title, :details, :completed)
  end
end
