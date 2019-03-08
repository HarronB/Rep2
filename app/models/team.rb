# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :coaches
  has_many :players

  validates :name, :win, :loss, presence: true
  validates :win, :loss, numericality: { only_integer: true }
end
