module ResponseType
  def success(data)
    response = { data: data, message: 'success' }
    ActionController::Instrumentation.render json: response, status: 200
  end
end
