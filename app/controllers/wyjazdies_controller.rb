class WyjazdiesController < ApplicationController
  load_and_authorize_resource

  # GET /wyjazdies
  def index
    @wyjazdies = Wyjazdy.all
  end

  # GET /wyjazdies/1
  def show
    @wyjazdy = Wyjazdy.find(params[:id])
  end

  # GET /wyjazdies/new
  def new
    @wyjazdy = Wyjazdy.new
  end

  # GET /wyjazdies/1/edit
  def edit
    @wyjazdy = Wyjazdy.find(params[:id])
  end

  # POST /wyjazdies
  def create
    @wyjazdy = Wyjazdy.new(params[:wyjazdy])

    if @wyjazdy.save
      redirect_to @wyjazdy, notice: 'Wyjazdy was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /wyjazdies/1
  def update
    @wyjazdy = Wyjazdy.find(params[:id])

    if @wyjazdy.update_attributes(params[:wyjazdy])
      redirect_to @wyjazdy, notice: 'Wyjazdy was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /wyjazdies/1
  def destroy
    @wyjazdy = Wyjazdy.find(params[:id])
    @wyjazdy.destroy
    redirect_to wyjazdies_url
  end
end
