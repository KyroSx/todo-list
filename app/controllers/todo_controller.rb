class TodoController < ApplicationController
  def index
    success Todo.all
  end

  def create
    @todo = Todo.new todo_params

    return created @todo if @todo.save

    bad_request @todo.errors
  end

  private

  def todo_params
    params.permit(:title, :details, :completed)
  end
end
