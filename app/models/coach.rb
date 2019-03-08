# frozen_string_literal: true

class Coach < ApplicationRecord
  belongs_to :team

  has_many :trainings # the table join between players and coaches
  has_many :players, through: :trainings #   ******through:  :trainings   is key, its not a direct association. Through table join.

  validates :name, presence: true
end
