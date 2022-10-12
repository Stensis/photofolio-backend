class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :confirm_password, :email_address
end
