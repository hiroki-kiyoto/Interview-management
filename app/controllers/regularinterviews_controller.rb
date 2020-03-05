class RegularinterviewsController < ApplicationController
  before_action :set_client
  before_action :set_mentor
  before_action :set_regularinterview, only: [:edit, :update, :destroy]
  def new
    @regularinterview  = Regularinterview.new
  end
  
  def create
    Regularinterview.create(regularinterviews_params)
    redirect_to "/mentors/#{set_mentor.id}/clients/#{set_client.id}"
  end
  
  def edit
  end
  
  def update
    set_regularinterview.update(regularinterviews_params)
    redirect_to "/mentors/#{set_mentor.id}/clients/#{set_client.id}"
  end

  def destroy
    set_regularinterview.destroy
    redirect_to "/mentors/#{set_mentor.id}/clients/#{set_client.id}"
  end
  
private
  def regularinterviews_params
    params.require(:regularinterview).permit(:status, :memo, :nextgoal, :starttime, :endtime, :weeklystudyhours).merge(client_id: params[:client_id])
  end
  def set_client
    @client = Client.find(params[:client_id])
  end
  def set_mentor
    @mentor = Mentor.find(params[:mentor_id])
  end
  def set_regularinterview
    @regularinterview = Regularinterview.find(params[:id])
  end
end

