class Gallery2sController < ApplicationController
  before_action :set_gallery_2, only: [:show, :edit, :update, :destroy]

  # GET /gallery_2s
  # GET /gallery_2s.json
  def index
    @gallery_2s = Gallery2.all
  end

  # GET /gallery_2s/1
  # GET /gallery_2s/1.json
  def show
  end

  # GET /gallery_2s/new
  def new
    @gallery_2 = Gallery2.new
  end

  # GET /gallery_2s/1/edit
  def edit
  end

  # POST /gallery_2s
  # POST /gallery_2s.json
  def create
    @gallery_2 = Gallery2.new(gallery_2_params)

    respond_to do |format|
      if @gallery_2.save
        format.html { redirect_to @gallery_2, notice: 'Gallery 2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gallery_2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @gallery_2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gallery_2s/1
  # PATCH/PUT /gallery_2s/1.json
  def update
    respond_to do |format|
      if @gallery_2.update(gallery_2_params)
        format.html { redirect_to @gallery_2, notice: 'Gallery 2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gallery_2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gallery_2s/1
  # DELETE /gallery_2s/1.json
  def destroy
    @gallery_2.destroy
    respond_to do |format|
      format.html { redirect_to gallery_2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery_2
      @gallery_2 = Gallery2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_2_params
      params.require(:gallery_2).permit(:description)
    end
end
