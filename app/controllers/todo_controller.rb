require_relative './http/response_type'

class TodoController < ApplicationController
  def create
    @todo = Todo.new todo_params

    return created @todo if @todo.save

    bad_request @todo.errors
  end

  def todo_params
    params.permit(:title, :details, :completed)
  end

  private

  def created(data, message = 'Todo Created')
    response = { data: data, message: message }
    render json: response, status: 201
  end

  def bad_request(error)
    render json: { error: error }, status: 400
  end
end
