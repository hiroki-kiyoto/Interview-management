class MentorsController < ApplicationController
   before_action :set_mentor, only: [:show, :edit, :update, :destroy]
  
  def index
    @mentors = Mentor.all.page(params[:page]).per(15)
    @q = Mentor.ransack(params[:q])
    @mentors = @q.result(distinct: true).page(params[:page]).per(15)
  end
  
  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.create(mentor_params)
    redirect_to action: 'index'
  end

  def update
    @mentor.update(mentor_params)
    redirect_to action: 'index'
  end


  def destroy
    @mentor.destroy
    redirect_to action: 'index'
  end
  
  def search
    @q = Mentor.search(search_params)
    @mentors = @q.result(distinct: true).page(params[:page]).per(15)
  end

private
  def mentor_params
    params.require(:mentor).permit(:name, :locate)
  end
  def set_mentor
    @mentor = Mentor.find(params[:id])
  end
  
end

