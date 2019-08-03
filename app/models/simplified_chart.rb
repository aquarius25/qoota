class SimplifiedChart < ApplicationRecord
  @simplified_charts = SimplifiedChart.all
  def self.item_vim
    @simplified_charts.select { |h| h[:item] == "vim" }
  end
  def self.item_ruby
    @simplified_charts.select { |h| h[:item] == "ruby" }
  end
  def self.item_linux
    @simplified_charts.select { |h| h[:item] == "linux" }
  end
end
