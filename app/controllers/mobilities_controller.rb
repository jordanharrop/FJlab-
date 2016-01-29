class MobilitiesController < ApplicationController
  before_action :set_mobility, only: [:show, :edit, :update, :destroy]

  # GET /mobilities
  # GET /mobilities.json
  def index
    @mobilities = Mobility.all
  end

  # GET /mobilities/1
  # GET /mobilities/1.json
  def show
  end

  # GET /mobilities/new
  def new
    @mobility = Mobility.new
  end

  # GET /mobilities/1/edit
  def edit
  end

  # POST /mobilities
  # POST /mobilities.json
  def create
    @mobility = Mobility.new(mobility_params)

    respond_to do |format|
      if @mobility.save
        format.html { redirect_to @mobility, notice: 'Mobility was successfully created.' }
        format.json { render :show, status: :created, location: @mobility }
      else
        format.html { render :new }
        format.json { render json: @mobility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mobilities/1
  # PATCH/PUT /mobilities/1.json
  def update
    respond_to do |format|
      if @mobility.update(mobility_params)
        format.html { redirect_to @mobility, notice: 'Mobility was successfully updated.' }
        format.json { render :show, status: :ok, location: @mobility }
      else
        format.html { render :edit }
        format.json { render json: @mobility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mobilities/1
  # DELETE /mobilities/1.json
  def destroy
    @mobility.destroy
    respond_to do |format|
      format.html { redirect_to mobilities_url, notice: 'Mobility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mobility
      @mobility = Mobility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mobility_params
      params.require(:mobility).permit(:name, :rank)
    end
end
