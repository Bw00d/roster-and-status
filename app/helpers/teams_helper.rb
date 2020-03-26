module TeamsHelper
  def type_1_teams
    teams = Team.where(complexity: "Type 1")
  end

  def type_2_teams
    teams = Team.where(complexity: "Type 2")
  end

end
