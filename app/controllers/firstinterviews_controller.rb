class FirstinterviewsController < ApplicationController
  
  def show
  end

  def new
    @firstinterview  = Firstinterview.new
    @client = Client.find(params[:client_id]) 
    @mentor = Mentor.find(params[:mentor_id])
  end
  
  def create
    @mentor = Mentor.find(params[:mentor_id])
    @client = Client.find(params[:client_id]) 
    Firstinterview.create(firstinterview_params)
    redirect_to "/mentors/#{@mentor.id}/clients/#{@client.id}"
  end
  
  def edit
    @firstinterview  = Firstinterview.find(params[:id])
    @client = Client.find(params[:client_id]) 
    @mentor = Mentor.find(params[:mentor_id])
  end
  
  def update
    @mentor = Mentor.find(params[:mentor_id])
    @client = Client.find(params[:client_id]) 
    @firstinterview = Firstinterview.find(params[:id])
    @firstinterview.update(firstinterview_params)
    redirect_to "/mentors/#{@mentor.id}/clients/#{@client.id}"
  end

  def destroy
    @mentor = Mentor.find(params[:mentor_id])
    @client = Client.find(params[:client_id])
    @firstinterview = Firstinterview.find(params[:id])
    @firstinterview.destroy
    redirect_to "/mentors/#{@mentor.id}/clients/#{@client.id}"
  end
  
private
  def firstinterview_params
    params.require(:firstinterview).permit(:skill, :goal, :memo, :nextgoal, :courseperiod, :weeklystudyhours, :starttime, :endtime).merge(client_id: params[:client_id])
  end
end

