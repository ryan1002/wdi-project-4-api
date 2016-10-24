class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :username, :password_digest, :role, :rate, :company_name, :borough, :image, :bio
end
