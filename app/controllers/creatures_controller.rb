class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all #Creature is in reference to the model
  end

   def show
    @creature = Creature.find params[:id]

  end

  def new
    @creature = Creature.new
  end

  def create
    Creature.create creature_params
    redirect_to creatures_path

  end


  private
  def creature_params

    params.require(:creature).permit(:description,:name)
  end




end
