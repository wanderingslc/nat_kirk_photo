class PerspectivesController < ApplicationController
  before_action :set_perspective, only: [:show, :edit, :update, :destroy]

  # GET /perspectives
  # GET /perspectives.json
  def index
    @perspectives = Perspective.all
  end

  # GET /perspectives/1
  # GET /perspectives/1.json
  def show
  end

  # GET /perspectives/new
  def new
    @perspective = Perspective.new
  end

  # GET /perspectives/1/edit
  def edit
  end

  # POST /perspectives
  # POST /perspectives.json
  def create
    @perspective = Perspective.new(perspective_params)

    respond_to do |format|
      if @perspective.save
        format.html { redirect_to @perspective, notice: 'Perspective was successfully created.' }
        format.json { render action: 'show', status: :created, location: @perspective }
      else
        format.html { render action: 'new' }
        format.json { render json: @perspective.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perspectives/1
  # PATCH/PUT /perspectives/1.json
  def update
    respond_to do |format|
      if @perspective.update(perspective_params)
        format.html { redirect_to @perspective, notice: 'Perspective was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @perspective.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perspectives/1
  # DELETE /perspectives/1.json
  def destroy
    @perspective.destroy
    respond_to do |format|
      format.html { redirect_to perspectives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perspective
      @perspective = Perspective.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perspective_params
      params.require(:perspective).permit(:title, :description, :image_url, :image)
    end
end
