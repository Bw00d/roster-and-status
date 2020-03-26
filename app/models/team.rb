class Team < ApplicationRecord
  has_many :primaries
  has_many :users, through: :primaries
  has_many :shares
  has_many :users, through: :shares
  has_many :users, through: :alternates
  has_many :alternates
  has_many :users, through: :trainees
  has_many :trainees

  def get_lead
    if self.lead
      User.find(self.lead).full_name
    else
      "Not Set"
    end
  end

  def display_shared
    shared = []
    self.shares.map { |s| shared << s.user.full_name }
    shared.join(", ")
  end

  def display_alternates
    shared = []
    unless self.alternates.empty?
      self.alternates.map { |s| shared << s.user.full_name }
    end
    shared.join(", ")
  end

  def display_trainees
    shared = []
    unless self.trainees.empty?
      self.trainees.map { |s| shared << s.user.full_name }
    end
    shared.join(", ")
  end
  


end