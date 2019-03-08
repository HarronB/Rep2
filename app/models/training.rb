# frozen_string_literal: true

class Training < ApplicationRecord
  belongs_to :player
  belongs_to :coach # these create correspding FK in the training table. View ERD
end
