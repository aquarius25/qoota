class SimplifiedChartsController < ApplicationController
  before_action :set_simplified_chart, only: [:show, :edit, :update, :destroy]

  # GET /simplified_charts
  # GET /simplified_charts.json
  def index
    simplified_charts = SimplifiedChart.all
    @about_vims = simplified_charts.select { |h| h[:item] == "vim" }
    @about_rubys = simplified_charts.select { |h| h[:item] == "ruby" }
    @about_linuxs = simplified_charts.select { |h| h[:item] == "linux" }
  end

  # GET /simplified_charts/1
  # GET /simplified_charts/1.json
  def show
  end

  # GET /simplified_charts/new
  def new
    @simplified_chart = SimplifiedChart.new
  end

  # GET /simplified_charts/1/edit
  def edit
  end

  # POST /simplified_charts
  # POST /simplified_charts.json
  def create
    @simplified_chart = SimplifiedChart.new(simplified_chart_params)

    respond_to do |format|
      if @simplified_chart.save
        format.html { redirect_to @simplified_chart, notice: 'Simplified chart was successfully created.' }
        format.json { render :show, status: :created, location: @simplified_chart }
      else
        format.html { render :new }
        format.json { render json: @simplified_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simplified_charts/1
  # PATCH/PUT /simplified_charts/1.json
  def update
    respond_to do |format|
      if @simplified_chart.update(simplified_chart_params)
        format.html { redirect_to @simplified_chart, notice: 'Simplified chart was successfully updated.' }
        format.json { render :show, status: :ok, location: @simplified_chart }
      else
        format.html { render :edit }
        format.json { render json: @simplified_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simplified_charts/1
  # DELETE /simplified_charts/1.json
  def destroy
    @simplified_chart.destroy
    respond_to do |format|
      format.html { redirect_to simplified_charts_url, notice: 'Simplified chart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simplified_chart
      @simplified_chart = SimplifiedChart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simplified_chart_params
      params.require(:simplified_chart).permit(:item, :word, :content)
    end
end
