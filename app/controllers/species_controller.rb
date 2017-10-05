class SpeciesController < ApplicationController
  
  def index
    @species_list = Species.all
  end

  def new
    @species = Species.new
  end

  def create
    species_params = params.require(:species).permit(:sci_name, :comm_name, :colour, :flower_time, :epiphyte, :description)
    @species = Species.new(species_params)
    
    respond_to do |format|
      if @species.save
        format.html { redirect_to :index, notice: 'Book was successfully created.' }
        format.json { render :index }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end

  end

end
