class RegularinterviewsController < ApplicationController
  def new
    @regularinterview  = Regularinterview.new
    @client = Client.find(params[:client_id]) 
    @mentor = Mentor.find(params[:mentor_id])
  end
  
  def create
    @mentor = Mentor.find(params[:mentor_id])
    @client = Client.find(params[:client_id]) 
    Regularinterview.create(regularinterviews_params)
    redirect_to "/mentors/#{@mentor.id}/clients/#{@client.id}"
  end
  
  def edit
    @regularinterview  = Regularinterview.find(params[:id])
    @client = Client.find(params[:client_id]) 
    @mentor = Mentor.find(params[:mentor_id])
  end
  
  def update
    @mentor = Mentor.find(params[:mentor_id])
    @client = Client.find(params[:client_id]) 
    @regularinterview = Regularinterview.find(params[:id])
    @regularinterview.update(regularinterviews_params)
    redirect_to "/mentors/#{@mentor.id}/clients/#{@client.id}"
  end

  def destroy
    @mentor = Mentor.find(params[:mentor_id])
    @client = Client.find(params[:client_id])
    @regularinterview = Regularinterview.find(params[:id])
    @regularinterview.destroy
    redirect_to "/mentors/#{@mentor.id}/clients/#{@client.id}"
  end
  

private
  def regularinterviews_params
    params.require(:regularinterview).permit(:status, :memo, :nextgoal, :starttime, :endtime, :weeklystudyhours).merge(client_id: params[:client_id])
  end
end

