class User < ApplicationRecord
  has_secure_password
  has_many :events, foreign_key: "plumber_id", class_name: "Event"
  has_many :enquiries, foreign_key: "client_id", class_name: "Event"
end
