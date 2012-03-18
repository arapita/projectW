class PojazdiesController < ApplicationController

  load_and_authorize_resource

  # GET /pojazdies
  def index
    @pojazdies = Pojazdy.search(params[:search]).order(:lokalizacja)
  end

  # GET /pojazdies/1
  def show
    @pojazdy = Pojazdy.find(params[:id])
  end

  # GET /pojazdies/new
  def new
    @pojazdy = Pojazdy.new
  end

  # GET /pojazdies/1/edit
  def edit
    @pojazdy = Pojazdy.find(params[:id])
  end

  # POST /pojazdies
  def create
    @pojazdy = Pojazdy.new(params[:pojazdy])
    if @pojazdy.save
      redirect_to @pojazdy, notice: 'Pojazdy was successfully created.'
    else
      render action: "new"
    end
    
  end

  # PUT /pojazdies/1
  def update
    @pojazdy = Pojazdy.find(params[:id])

    if @pojazdy.update_attributes(params[:pojazdy])
      flash[:notice] = "Pomyslnie zedytowano."
        redirect_to root_url
    else
      render action: "edit"
    end
  end

  # DELETE /pojazdies/1
  def destroy
    @pojazdy = Pojazdy.find(params[:id])
    @pojazdy.destroy
    redirect_to pojazdies_url
  end
end
