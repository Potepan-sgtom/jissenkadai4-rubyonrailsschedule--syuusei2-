class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :start, presence: true
  validates :introduction, length: { minimum: 10 }
end
