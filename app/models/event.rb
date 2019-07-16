class Event < ApplicationRecord
  self.per_page = 10

  default_scope { order(event_date: :desc) }

  scope :highlights, -> { order(Arel.sql("RANDOM()")).limit(5) }

  validates :title, presence: true
  validates :event_date, presence: true

end
