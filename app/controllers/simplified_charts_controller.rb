class SimplifiedChartsController < ApplicationController
  before_action :set_simplified_chart, only: [:show, :edit, :update, :destroy]

  def index
    simplified_charts = SimplifiedChart.all
    @about_vims = simplified_charts.select { |h| h[:item] == "vim" }
    @about_rubys = simplified_charts.select { |h| h[:item] == "ruby" }
    @about_linuxs = simplified_charts.select { |h| h[:item] == "linux" }
    @about_gits = simplified_charts.select { |h| h[:item] == "git" }
  end

  def new
    @simplified_chart = SimplifiedChart.new
  end

  def edit
  end

  def create
    @simplified_chart = SimplifiedChart.new(simplified_chart_params)

    respond_to do |format|
      if @simplified_chart.save
        format.html { redirect_to simplified_charts_path, notice: 'Simplified chart was successfully created.' }
        format.json { render :index, status: :created, location: @simplified_chart }
      else
        format.html { render :index }
        format.json { render json: @simplified_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @simplified_chart.update(simplified_chart_params)
        format.html { redirect_to simplified_charts_path, notice: 'Simplified chart was successfully updated.' }
        format.json { render :show, status: :ok, location: @simplified_chart }
      else
        format.html { render :edit }
        format.json { render json: @simplified_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @simplified_chart.destroy
    respond_to do |format|
      format.html { redirect_to simplified_charts_path, notice: 'Simplified chart was successfully destroyed.' }
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
