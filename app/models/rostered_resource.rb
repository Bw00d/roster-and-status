class RosteredResource < ApplicationRecord
  belongs_to :roster
  belongs_to :user

  def user
    User.find(self.user_id)
  end
end
