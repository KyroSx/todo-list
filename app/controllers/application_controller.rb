require_relative 'http/response_type'

class ApplicationController < ActionController::API
  include ResponseType
end
