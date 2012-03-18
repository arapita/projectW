class PrzyjazdiesController < ApplicationController
  load_and_authorize_resource

  # GET /przyjazdies
  def index
    @przyjazdies = Przyjazdy.all
  end

  # GET /przyjazdies/1
  def show
    @przyjazdy = Przyjazdy.find(params[:id])
  end

  # GET /przyjazdies/new
  def new
    @przyjazdy = Przyjazdy.new
  end

  # GET /przyjazdies/1/edit
  def edit
    @przyjazdy = Przyjazdy.find(params[:id])
  end

  # POST /przyjazdies
  def create
    @przyjazdy = Przyjazdy.new(params[:przyjazdy])

    if @przyjazdy.save
      redirect_to @przyjazdy, notice: 'Przyjazdy was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /przyjazdies/1
  def update
    @przyjazdy = Przyjazdy.find(params[:id])

    if @przyjazdy.update_attributes(params[:przyjazdy])
      redirect_to @przyjazdy, notice: 'Przyjazdy was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /przyjazdies/1
  def destroy
    @przyjazdy = Przyjazdy.find(params[:id])
    @przyjazdy.destroy
    redirect_to przyjazdies_url
  end
end
