class KindergartensController < ApplicationController
  # GET /kindergartens
  # GET /kindergartens.json
  def index
    @kindergartens = Kindergarten.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kindergartens }
    end
  end

  # GET /kindergartens/1
  # GET /kindergartens/1.json
  def show
    @kindergarten = Kindergarten.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kindergarten }
    end
  end

  # GET /kindergartens/new
  # GET /kindergartens/new.json
  def new
    @kindergarten = Kindergarten.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kindergarten }
    end
  end

  # GET /kindergartens/1/edit
  def edit
    @kindergarten = Kindergarten.find(params[:id])
  end

  # POST /kindergartens
  # POST /kindergartens.json
  def create
    @kindergarten = Kindergarten.new(params[:kindergarten])

    respond_to do |format|
      if @kindergarten.save
        format.html { redirect_to @kindergarten, notice: 'Kindergarten was successfully created.' }
        format.json { render json: @kindergarten, status: :created, location: @kindergarten }
      else
        format.html { render action: "new" }
        format.json { render json: @kindergarten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kindergartens/1
  # PUT /kindergartens/1.json
  def update
    @kindergarten = Kindergarten.find(params[:id])

    respond_to do |format|
      if @kindergarten.update_attributes(params[:kindergarten])
        format.html { redirect_to @kindergarten, notice: 'Kindergarten was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kindergarten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kindergartens/1
  # DELETE /kindergartens/1.json
  def destroy
    @kindergarten = Kindergarten.find(params[:id])
    @kindergarten.destroy

    respond_to do |format|
      format.html { redirect_to kindergartens_url }
      format.json { head :no_content }
    end
  end
end
