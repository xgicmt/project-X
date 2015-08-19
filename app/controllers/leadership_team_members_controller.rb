class LeadershipTeamMembersController < ApplicationController

  def new
    @teammember = Leadership_team_member.new
  end

  def create
    @leadership_team_member = Leadership_team_member.create(teammember_params)
    if @leadership_team_member.save
      redirect_to @leadership_team_member
    else
      flash[:notice] = "Something Broke"
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
    @leadership_team_member = Leadership_team_member.find(params[:id])
  end

private

  def teammember_params
    params.require(:leadership_team_member).permit(:name, :synopsis, :picture, :sponsor_id)
  end

end
