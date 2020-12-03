module ResponseType
  def success(data, message = 'Success')
    response = { message: message, data: data }
    render json: response, status: 200
  end

  def created(data, entity_name = 'Entity')
    response = { message: "#{entity_name} Created", data: data }
    render json: response, status: 201
  end

  def bad_request(error)
    render json: { error: error }, status: 400
  end
end
