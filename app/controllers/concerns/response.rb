#to set data obtained from controllers to json

module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
