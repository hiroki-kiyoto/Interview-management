class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  
  def index
    @mentor = Mentor.find(params[:mentor_id])
    @q = @mentor.clients.ransack(params[:q])
    @clients = @q.result(distinct: true).page(params[:page]).per(15)
  end

  def show
    @mentor = Mentor.find(params[:mentor_id])
    @client = Client.find(params[:id])
    @firstinterviews = @client.firstinterviews
    @regularinterviews = @client.regularinterviews
  end
  
  def new
    @mentor = Mentor.find(params[:mentor_id])
    @client = Client.new
  end


  def create
    Client.create(client_params)
    @mentor = Mentor.find(params[:mentor_id])
    redirect_to action: 'index'
  end
  
  def edit
    @mentor = Mentor.find(params[:mentor_id])
  end

  
  def update
    @clinet = set_client.update(client_params)
    @mentor = Mentor.find(params[:mentor_id])
    redirect_to action: 'index'
  end

  def destroy
    set_client.destroy
    @mentor = Mentor.find(params[:mentor_id])
    redirect_to action: 'index'
  end
  
  def search
    @mentor = Mentor.find(params[:mentor_id])
    @q = @mentor.clients.search(search_params)
    @clients = @q.result(distinct: true).page(params[:page]).per(15)
  end

private
  def client_params
    params.require(:client).permit(:name, :period, :url, :locate, :progresstable).merge(mentor_id: params[:mentor_id])
  end
  def set_client
    @client = Client.find(params[:id])
  end
end
