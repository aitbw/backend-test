class Event < ApplicationRecord

  default_scope { order(event_date: :desc) }

  validates :title, presence: true
  validates :event_date, presence: true

end
