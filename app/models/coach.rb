# frozen_string_literal: true

class Coach < ApplicationRecord
  belongs_to :team

  has_many :trainings # the table join between players and coaches
  has_many :players, through: :trainings #   ******through:  :trainings
  validates :name, presence: true
end
