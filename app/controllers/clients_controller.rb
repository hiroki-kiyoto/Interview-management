class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  before_action :set_mentor
  
  def index
    @q = set_mentor.clients.ransack(params[:q])
    @clients = @q.result(distinct: true).page(params[:page]).per(15)
  end

  def show
    @firstinterviews = set_client.firstinterviews
    @regularinterviews = set_client.regularinterviews
  end
  
  def new
    @client = Client.new
  end


  def create
    Client.create(client_params)
    redirect_to action: 'index'
  end
  
  def edit
  end

  
  def update
    set_client.update(client_params)
    redirect_to action: 'index'
  end

  def destroy
    set_client.destroy
    redirect_to action: 'index'
  end
  
  def search
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
  def set_mentor
    @mentor = Mentor.find(params[:mentor_id])
  end
end
