class MementosController < ApplicationController
  before_action :set_memento, only: [:show, :edit, :update, :destroy]

  # GET /mementos
  # GET /mementos.json
  def index
    @mementos = Memento.all
  end

  # GET /mementos/1
  # GET /mementos/1.json
  def show
  end

  # GET /mementos/new
  def new
    @memento = Memento.new
  end

  # GET /mementos/1/edit
  def edit
  end

  # POST /mementos
  # POST /mementos.json
  def create
    @memento = Memento.new(memento_params)

    respond_to do |format|
      if @memento.save
        format.html { redirect_to @memento, notice: 'Memento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @memento }
      else
        format.html { render action: 'new' }
        format.json { render json: @memento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mementos/1
  # PATCH/PUT /mementos/1.json
  def update
    respond_to do |format|
      if @memento.update(memento_params)
        format.html { redirect_to @memento, notice: 'Memento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @memento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mementos/1
  # DELETE /mementos/1.json
  def destroy
    @memento.destroy
    respond_to do |format|
      format.html { redirect_to mementos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memento
      @memento = Memento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memento_params
      params.require(:memento).permit(:title, :description, :image_url, :image )
    end
end
