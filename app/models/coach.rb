class Coach < ApplicationRecord
  belongs_to :team

  validates :name, prenence: true
end
