class OportunitiesController < ApplicationController
  before_action :set_oportunity, only: [:show, :edit, :update, :destroy]

  # GET /oportunities
  # GET /oportunities.json
  def index
    @oportunities = Oportunity.all
  end

  # GET /oportunities/1
  # GET /oportunities/1.json
  def show
  end

  # GET /oportunities/new
  def new
    @oportunity = Oportunity.new
  end

  # GET /oportunities/1/edit
  def edit
  end

  # POST /oportunities
  # POST /oportunities.json
  def create
    @oportunity = Oportunity.new(oportunity_params)

    respond_to do |format|
      if @oportunity.save
        format.html { redirect_to @oportunity, notice: 'Oportunity was successfully created.' }
        format.json { render :show, status: :created, location: @oportunity }
      else
        format.html { render :new }
        format.json { render json: @oportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oportunities/1
  # PATCH/PUT /oportunities/1.json
  def update
    respond_to do |format|
      if @oportunity.update(oportunity_params)
        format.html { redirect_to @oportunity, notice: 'Oportunity was successfully updated.' }
        format.json { render :show, status: :ok, location: @oportunity }
      else
        format.html { render :edit }
        format.json { render json: @oportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oportunities/1
  # DELETE /oportunities/1.json
  def destroy
    @oportunity.destroy
    respond_to do |format|
      format.html { redirect_to oportunities_url, notice: 'Oportunity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oportunity
      @oportunity = Oportunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oportunity_params
      params.require(:oportunity).permit(:name, :description, :budget, :money, :published_date, :deadline, :result_date, :company_id, :category_id, :status)
    end
end
