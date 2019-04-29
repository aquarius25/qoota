class QiitaItemsController < ApplicationController
  before_action :set_qiita_item, only: [:show, :edit, :update, :destroy]

  # GET /qiita_items
  # GET /qiita_items.json
  def index
    @qiita_items = QiitaItem.get
  end

  # GET /qiita_items/1
  # GET /qiita_items/1.json
  def show
  end

  # GET /qiita_items/new
  def new
    @qiita_item = QiitaItem.new
  end

  # GET /qiita_items/1/edit
  def edit
  end

  # POST /qiita_items
  # POST /qiita_items.json
  def create
    @qiita_item = QiitaItem.new(qiita_item_params)

    respond_to do |format|
      if @qiita_item.save
        format.html { redirect_to @qiita_item, notice: 'Qiita item was successfully created.' }
        format.json { render :show, status: :created, location: @qiita_item }
      else
        format.html { render :new }
        format.json { render json: @qiita_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qiita_items/1
  # PATCH/PUT /qiita_items/1.json
  def update
    respond_to do |format|
      if @qiita_item.update(qiita_item_params)
        format.html { redirect_to @qiita_item, notice: 'Qiita item was successfully updated.' }
        format.json { render :show, status: :ok, location: @qiita_item }
      else
        format.html { render :edit }
        format.json { render json: @qiita_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qiita_items/1
  # DELETE /qiita_items/1.json
  def destroy
    @qiita_item.destroy
    respond_to do |format|
      format.html { redirect_to qiita_items_url, notice: 'Qiita item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qiita_item
      @qiita_item = QiitaItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qiita_item_params
      params.require(:qiita_item).permit(:title, :url, :like_count)
    end
end
