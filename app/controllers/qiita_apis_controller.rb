class QiitaApisController < ApplicationController
  def index
    qiita_api = QiitaApi.new
    @items = qiita_api.get_items(qiita_params)
  end

  private
  def qiita_params
    params.permit(:tag, :update_at, :stocks)
  end
end
