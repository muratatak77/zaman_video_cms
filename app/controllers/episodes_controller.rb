class EpisodesController < ApplicationController

  before_action :set_episode, only: [:show, :update, :destroy, :edit]

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def show
  end

  def create
    @episode = Episode.create(permit_params)
    redirect_to episodes_path
  end

  def edit
  end

  def update
    @episode.update(permit_params)
    redirect_to episodes_path
  end


  def destroy
    @episode.destroy
    redirect_to episodes_path
  end

  private
  def set_episode   
   @episode = Episode.find(params[:id])   
  end

  def permit_params
    params.require(:episode).permit(:name, :video, :program_id, :image)
  end
end
