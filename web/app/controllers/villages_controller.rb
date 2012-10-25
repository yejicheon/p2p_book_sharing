class VillagesController < ApplicationController
  # GET /villages
  # GET /villages.json
  def index
    @villages = Village.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @villages }
      format.csv { render csv: @villages }
    end
  end

  # GET /villages/1
  # GET /villages/1.json
  def show
    @village = Village.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @village }
    end
  end

  # GET /villages/new
  # GET /villages/new.json
  def new
    @village = Village.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @village }
    end
  end

  # GET /villages/1/edit
  def edit
    @village = Village.find(params[:id])
  end

  # POST /villages
  # POST /villages.json
  def create
    @village = Village.new(params[:village])

    respond_to do |format|
      if @village.save
        format.html { redirect_to @village, notice: 'Village was successfully created.' }
        format.json { render json: @village, status: :created, location: @village }
      else
        format.html { render action: "new" }
        format.json { render json: @village.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /villages/1
  # PUT /villages/1.json
  def update
    @village = Village.find(params[:id])

    respond_to do |format|
      if @village.update_attributes(params[:village])
        format.html { redirect_to @village, notice: 'Village was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @village.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /villages/1
  # DELETE /villages/1.json
  def destroy
    @village = Village.find(params[:id])
    @village.destroy

    respond_to do |format|
      format.html { redirect_to villages_url }
      format.json { head :no_content }
    end
  end
end
