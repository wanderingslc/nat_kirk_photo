class TranscendencesController < ApplicationController
  before_action :set_transcendence, only: [:show, :edit, :update, :destroy]

  # GET /transcendences
  # GET /transcendences.json
  def index
    @transcendences = Transcendence.all
  end

  # GET /transcendences/1
  # GET /transcendences/1.json
  def show
  end

  # GET /transcendences/new
  def new
    @transcendence = Transcendence.new
  end

  # GET /transcendences/1/edit
  def edit
  end

  # POST /transcendences
  # POST /transcendences.json
  def create
    @transcendence = Transcendence.new(transcendence_params)

    respond_to do |format|
      if @transcendence.save
        format.html { redirect_to @transcendence, notice: 'Transcendence was successfully created.' }
        format.json { render action: 'show', status: :created, location: @transcendence }
      else
        format.html { render action: 'new' }
        format.json { render json: @transcendence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transcendences/1
  # PATCH/PUT /transcendences/1.json
  def update
    respond_to do |format|
      if @transcendence.update(transcendence_params)
        format.html { redirect_to @transcendence, notice: 'Transcendence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @transcendence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transcendences/1
  # DELETE /transcendences/1.json
  def destroy
    @transcendence.destroy
    respond_to do |format|
      format.html { redirect_to transcendences_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transcendence
      @transcendence = Transcendence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transcendence_params
      params.require(:transcendence).permit(:title, :description, :image_url, :image)
    end
end
