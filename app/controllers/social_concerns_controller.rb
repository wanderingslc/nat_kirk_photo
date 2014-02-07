class SocialConcernsController < ApplicationController
  before_action :set_social_concern, only: [:show, :edit, :update, :destroy]

  # GET /social_concerns
  # GET /social_concerns.json
  def index
    @social_concerns = SocialConcern.all
  end

  # GET /social_concerns/1
  # GET /social_concerns/1.json
  def show
  end

  # GET /social_concerns/new
  def new
    @social_concern = SocialConcern.new
  end

  # GET /social_concerns/1/edit
  def edit
  end

  # POST /social_concerns
  # POST /social_concerns.json
  def create
    @social_concern = SocialConcern.new(social_concern_params)

    respond_to do |format|
      if @social_concern.save
        format.html { redirect_to @social_concern, notice: 'Social concern was successfully created.' }
        format.json { render action: 'show', status: :created, location: @social_concern }
      else
        format.html { render action: 'new' }
        format.json { render json: @social_concern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_concerns/1
  # PATCH/PUT /social_concerns/1.json
  def update
    respond_to do |format|
      if @social_concern.update(social_concern_params)
        format.html { redirect_to @social_concern, notice: 'Social concern was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @social_concern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_concerns/1
  # DELETE /social_concerns/1.json
  def destroy
    @social_concern.destroy
    respond_to do |format|
      format.html { redirect_to social_concerns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_concern
      @social_concern = SocialConcern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def social_concern_params
      params.require(:social_concern).permit(:title, :description, :image_url)
    end
end
