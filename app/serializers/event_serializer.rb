class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :startsAt, :endsAt, :client_id, :plumber_id
end
