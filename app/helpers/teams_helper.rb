module TeamsHelper
  def type_1_teams
    teams = Team.where(complexity: "Type 1")
  end

  def type_2_teams
    teams = Team.where(complexity: "Type 2")
  end

  def display_type1_alternates
    names = []
    type_1_teams.each do |t|
     t.alternates.map { |s| names << s.user.full_name }
    end
    names.join(", ")
  end

  def display_type2_alternates
    names = []
    type_2_teams.each do |t|
     t.alternates.map { |s| names << s.user.full_name }
    end
    names.join(", ")
  end

  def display_type1_trainees
    names = []
    type_1_teams.each do |t|
     t.trainees.map { |s| names << s.user.full_name }
    end
    names.join(", ")
  end

  def display_type2_trainees
    names = []
    type_2_teams.each do |t|
     t.trainees.map { |s| names << s.user.full_name }
    end
    names.join(", ")
  end



end
