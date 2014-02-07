class PinholesController < ApplicationController
  before_action :set_pinhole, only: [:show, :edit, :update, :destroy]

  # GET /pinholes
  # GET /pinholes.json
  def index
    @pinholes = Pinhole.all
  end

  # GET /pinholes/1
  # GET /pinholes/1.json
  def show
  end

  # GET /pinholes/new
  def new
    @pinhole = Pinhole.new
  end

  # GET /pinholes/1/edit
  def edit
  end

  # POST /pinholes
  # POST /pinholes.json
  def create
    @pinhole = Pinhole.new(pinhole_params)

    respond_to do |format|
      if @pinhole.save
        format.html { redirect_to @pinhole, notice: 'Pinhole was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pinhole }
      else
        format.html { render action: 'new' }
        format.json { render json: @pinhole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pinholes/1
  # PATCH/PUT /pinholes/1.json
  def update
    respond_to do |format|
      if @pinhole.update(pinhole_params)
        format.html { redirect_to @pinhole, notice: 'Pinhole was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pinhole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pinholes/1
  # DELETE /pinholes/1.json
  def destroy
    @pinhole.destroy
    respond_to do |format|
      format.html { redirect_to pinholes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pinhole
      @pinhole = Pinhole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pinhole_params
      params.require(:pinhole).permit(:title, :description, :image_url)
    end
end
