class Event < ApplicationRecord

  default_scope { order(event_date: :desc) }

  scope :highlights, -> { order(Arel.sql("RANDOM()")) }

  validates :title, presence: true
  validates :event_date, presence: true

end
