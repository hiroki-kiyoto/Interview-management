class FirstinterviewsController < ApplicationController
  before_action :set_client
  before_action :set_mentor
  before_action :set_firstinterview, only: [:edit, :update, :destroy]

  def new
    @firstinterview  = Firstinterview.new
  end
  
  def create
    Firstinterview.create(firstinterview_params)
    redirect_to "/mentors/#{set_mentor.id}/clients/#{set_client.id}"
  end
  
  def edit
  end
  
  def update
    set_firstinterview.update(firstinterview_params)
    redirect_to "/mentors/#{set_mentor.id}/clients/#{set_client.id}"
  end

  def destroy
    set_firstinterview.destroy
    redirect_to "/mentors/#{set_mentor.id}/clients/#{set_client.id}"
  end
  
private
  def firstinterview_params
    params.require(:firstinterview).permit(:skill, :goal, :memo, :nextgoal, :courseperiod, :weeklystudyhours, :starttime, :endtime).merge(client_id: params[:client_id])
  end
  def set_client
    @client = Client.find(params[:client_id])
  end
  def set_mentor
    @mentor = Mentor.find(params[:mentor_id])
  end
  def set_firstinterview
    @firstinterview = Firstinterview.find(params[:id])
  end
end

