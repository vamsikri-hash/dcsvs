class JsonWebToken
  HAMC_SECRET = Rails.application.secrets.secret_key_base

  #token expires after 24 hours from generation
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, HAMC_SECRET)
  end

  def self.decode(token)
    body = JWT.decode(token, HAMC_SECRET)[0]
    HashWithIndifferentAccess.new body

    #for invalid token
  rescue JWT::DecodeError => e
    raise ExceptionHandler::InvalidToken, e.message
  end
end
