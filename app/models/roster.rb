class Roster < ApplicationRecord
  belongs_to :team
  has_many :restered_resources
  has_many :users, through: :rostered_resources

  def get_lead
    if self.lead
      User.find(self.lead).full_name
    else
      "Not Set"
    end
  end

  def get_assistant
    if self.assistant
      User.find(self.assistant).full_name
    else
      "Not Set"
    end
  end
end
