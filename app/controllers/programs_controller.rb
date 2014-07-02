class ProgramsController < ApplicationController
  
  before_action :set_program, only: [:show, :update, :destroy, :edit]

  def index
    @programs = Program.all
    
  end

  def new
    @program = Program.new
  end

  def show
  end

  def create
    @program = Program.create(permit_params)
    redirect_to programs_path
  end

  def edit

  end

  def update
    @program.update(permit_params)
    redirect_to programs_path
  end


  def destroy
    @program.destroy
    redirect_to programs_path
  end

  private
  def set_program   
   @program = Program.find(params[:id])   
  end

  def permit_params
    params.require(:program).permit(:name , :category_id)
  end

end
