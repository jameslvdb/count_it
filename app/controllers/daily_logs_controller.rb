class DailyLogsController < ApplicationController
  before_action :set_daily_log, only: %i[show edit update destroy]

  # GET /daily_logs or /daily_logs.json
  def index
    @daily_logs = DailyLog.all
  end

  # GET /daily_logs/1 or /daily_logs/1.json
  def show
  end

  # GET /daily_logs/new
  def new
    @daily_log = DailyLog.new
  end

  # GET /daily_logs/1/edit
  def edit
  end

  # POST /daily_logs or /daily_logs.json
  def create
    @daily_log = DailyLog.new(daily_log_params)

    respond_to do |format|
      if @daily_log.save
        format.html { redirect_to daily_log_url(@daily_log), notice: "Daily log was successfully created." }
        format.json { render :show, status: :created, location: @daily_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_logs/1 or /daily_logs/1.json
  def update
    respond_to do |format|
      if @daily_log.update(daily_log_params)
        format.html { redirect_to daily_log_url(@daily_log), notice: "Daily log was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_logs/1 or /daily_logs/1.json
  def destroy
    @daily_log.destroy!

    respond_to do |format|
      format.html { redirect_to daily_logs_url, notice: "Daily log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_daily_log
    @daily_log = if params[:id] == "today"
      DailyLog.find_or_create_by!(date: Date.today)
    else
      DailyLog.find(params[:id])
    end
  end

  # Only allow a list of trusted parameters through.
  def daily_log_params
    params.require(:daily_log).permit(:weight, :date)
  end
end
