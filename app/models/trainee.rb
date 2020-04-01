class Trainee < ApplicationRecord
  belongs_to :user

  scope :type_1, -> { where complexity: "Type 1" }
  scope :type_2, -> { where complexity: "Type 2" }
end
