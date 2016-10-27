class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :startsAt, :endsAt, :plumber_id, :client_id

  # def startsAt
  #   Time.parse(object.startsAt.to_s)
  # end
  #
  # def endsAt
  #   Time.parse(object.endsAt.to_s)
  # end
end
