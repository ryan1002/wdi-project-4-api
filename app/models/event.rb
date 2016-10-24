class Event < ApplicationRecord
  belongs_to :client, foreign_key: "client_id", class_name: "User"
  belongs_to :plumber, foreign_key: "plumber_id", class_name: "User"
end
