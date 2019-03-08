# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team

  has_many :trainings # the table join between players and coaches
  has_many :coaches, through: :trainings #   ******through:  :trainings   is key, its not a direct association. Through table join.

  validates :name, :position, presence: true
end
