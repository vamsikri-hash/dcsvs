class Message
  def self.not_found(record = "record")
    "#{record} not found"
  end
  def self.invalid_credentials
    "Invalid credentials"
  end

  def self.invalid_token
    "Invalid Token"
  end

  def self.missing_token
    "Missing Token"
  end
  def self.unauthorized
    "unAuthorized"
  end

  def self.account_created
    "Account Created"
  end

  def self.account_not_created
    "account not created"
  end

  def self.expired_token
    "Your Token is Expired , Please log on again to continue"
  end
end
