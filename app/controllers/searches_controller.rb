class SearchesController < ApplicationController
  # GET /searches
  def index
    @searches = Search.all
  end

  # GET /searches/1
  def show
    @search = Search.find(params[:id])
  end

  # GET /searches/new
  def new
    @search = Search.new
  end

  # GET /searches/1/edit
  def edit
    @search = Search.find(params[:id])
  end

  # POST /searches
  def create
    @search = Search.new(params[:search])

    if @search.save
      redirect_to @search, notice: 'Search was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /searches/1
  def update
    @search = Search.find(params[:id])

    if @search.update_attributes(params[:search])
      redirect_to @search, notice: 'Search was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /searches/1
  def destroy
    @search = Search.find(params[:id])
    @search.destroy
    redirect_to searches_url
  end
end
