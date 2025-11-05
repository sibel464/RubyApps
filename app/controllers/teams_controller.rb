class TeamsController < ApplicationController
  # GET /teams
  def index
    teams = Team.all
    render json: teams
  end

  # GET /teams/:id
  def show
    team = Team.find(params[:id])
    render json: team
  end

  # POST /teams
  def create
    team = Team.new(team_params)
    if team.save
      render json: { message: "Team created successfully", team: team }, status: :created
    else
      render json: { errors: team.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/:id
  def update
    team = Team.find(params[:id])
    if team.update(team_params)
      render json: { message: "Team updated successfully", team: team }
    else
      render json: { errors: team.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /teams/:id
  def destroy
    team = Team.find(params[:id])
    team.destroy
    render json: { message: "Team deleted successfully" }
  end

  private

  def team_params
    params.permit(:name, :description)
  end
end
