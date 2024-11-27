class FlatsController < ApplicationController
  # Action to display a list of all flats
  def index
    @flats = Flat.all
  end
  # Action to display a single flat
  def show
    @flat = Flat.find(params[:id])
  end

  # Action to show the form for creating a new flat
  def new
    @flat = Flat.new
  end

  # Action to create a new flat in the database
  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat, notice: 'Flat was successfully created.'
    else
      render :new
    end
  end

  # Action to show the form for editing an existing flat
  def edit
    @flat = Flat.find(params[:id])
  end

  # Action to update the details of an existing flat
  def update
    @flat = Flat.find(params[:id])
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'Flat was successfully updated.'
    else
      render :edit
    end
  end

  # Action to destroy a flat
  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, notice: 'Flat was successfully deleted.'
  end

  private

  # Strong parameters to permit the flat's attributes
  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
