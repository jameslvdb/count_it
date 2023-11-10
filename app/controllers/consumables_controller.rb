class ConsumablesController < ApplicationController
  before_action :set_consumable, only: %i[show edit update destroy]

  # GET /consumables or /consumables.json
  def index
    @consumables = Consumable.all
  end

  # GET /consumables/1 or /consumables/1.json
  def show
  end

  # GET /consumables/new
  def new
    @consumable = Consumable.new
  end

  # GET /consumables/1/edit
  def edit
  end

  # POST /consumables or /consumables.json
  def create
    @consumable = Consumable.new(consumable_params)

    respond_to do |format|
      if @consumable.save
        format.html { redirect_to consumable_url(@consumable), notice: "Consumable was successfully created." }
        format.json { render :show, status: :created, location: @consumable }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consumable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumables/1 or /consumables/1.json
  def update
    respond_to do |format|
      if @consumable.update(consumable_params)
        format.html { redirect_to consumable_url(@consumable), notice: "Consumable was successfully updated." }
        format.json { render :show, status: :ok, location: @consumable }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consumable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumables/1 or /consumables/1.json
  def destroy
    @consumable.destroy!

    respond_to do |format|
      format.html { redirect_to consumables_url, notice: "Consumable was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_consumable
    @consumable = Consumable.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def consumable_params
    params.require(:consumable).permit(:name, :calories, :carbs_in_grams, :protein_in_grams, :total_fat_in_grams, :sodium_in_mg)
  end
end
