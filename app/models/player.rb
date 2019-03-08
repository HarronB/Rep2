# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team

  validates :name, :position, presence: true
end
