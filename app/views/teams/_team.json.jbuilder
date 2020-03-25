json.extract! team, :id, :lead, :assistant, :name, :status, :location, :incident, :update, :downdate, :created_at, :updated_at
json.url team_url(team, format: :json)
