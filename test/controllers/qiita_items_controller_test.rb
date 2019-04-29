require 'test_helper'

class QiitaItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qiita_item = qiita_items(:one)
  end

  test "should get index" do
    get qiita_items_url
    assert_response :success
  end

  test "should get new" do
    get new_qiita_item_url
    assert_response :success
  end

  test "should create qiita_item" do
    assert_difference('QiitaItem.count') do
      post qiita_items_url, params: { qiita_item: { like_count: @qiita_item.like_count, title: @qiita_item.title, url: @qiita_item.url } }
    end

    assert_redirected_to qiita_item_url(QiitaItem.last)
  end

  test "should show qiita_item" do
    get qiita_item_url(@qiita_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_qiita_item_url(@qiita_item)
    assert_response :success
  end

  test "should update qiita_item" do
    patch qiita_item_url(@qiita_item), params: { qiita_item: { like_count: @qiita_item.like_count, title: @qiita_item.title, url: @qiita_item.url } }
    assert_redirected_to qiita_item_url(@qiita_item)
  end

  test "should destroy qiita_item" do
    assert_difference('QiitaItem.count', -1) do
      delete qiita_item_url(@qiita_item)
    end

    assert_redirected_to qiita_items_url
  end
end
