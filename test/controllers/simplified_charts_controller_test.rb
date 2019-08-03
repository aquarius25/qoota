require 'test_helper'

class SimplifiedChartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simplified_chart = simplified_charts(:one)
  end

  test "should get index" do
    get simplified_charts_url
    assert_response :success
  end

  test "should get new" do
    get new_simplified_chart_url
    assert_response :success
  end

  test "should create simplified_chart" do
    assert_difference('SimplifiedChart.count') do
      post simplified_charts_url, params: { simplified_chart: { content: @simplified_chart.content, item: @simplified_chart.item, word: @simplified_chart.word } }
    end

    assert_redirected_to simplified_chart_url(SimplifiedChart.last)
  end

  test "should show simplified_chart" do
    get simplified_chart_url(@simplified_chart)
    assert_response :success
  end

  test "should get edit" do
    get edit_simplified_chart_url(@simplified_chart)
    assert_response :success
  end

  test "should update simplified_chart" do
    patch simplified_chart_url(@simplified_chart), params: { simplified_chart: { content: @simplified_chart.content, item: @simplified_chart.item, word: @simplified_chart.word } }
    assert_redirected_to simplified_chart_url(@simplified_chart)
  end

  test "should destroy simplified_chart" do
    assert_difference('SimplifiedChart.count', -1) do
      delete simplified_chart_url(@simplified_chart)
    end

    assert_redirected_to simplified_charts_url
  end
end
