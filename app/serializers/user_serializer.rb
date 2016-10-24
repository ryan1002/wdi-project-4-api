class UserSerializer < ActiveModel::Serializer
  has_many :events, foreign_key: "plumber_id", class_name: "Event"
  has_many :enquiries, foreign_key: "client_id", class_name: "Event"
  
  attributes :id, :first_name, :last_name, :email, :username, :password_digest, :role, :rate, :company_name, :borough, :image, :bio
end
