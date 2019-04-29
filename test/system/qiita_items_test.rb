require "application_system_test_case"

class QiitaItemsTest < ApplicationSystemTestCase
  setup do
    @qiita_item = qiita_items(:one)
  end

  test "visiting the index" do
    visit qiita_items_url
    assert_selector "h1", text: "Qiita Items"
  end

  test "creating a Qiita item" do
    visit qiita_items_url
    click_on "New Qiita Item"

    fill_in "Like count", with: @qiita_item.like_count
    fill_in "Title", with: @qiita_item.title
    fill_in "Url", with: @qiita_item.url
    click_on "Create Qiita item"

    assert_text "Qiita item was successfully created"
    click_on "Back"
  end

  test "updating a Qiita item" do
    visit qiita_items_url
    click_on "Edit", match: :first

    fill_in "Like count", with: @qiita_item.like_count
    fill_in "Title", with: @qiita_item.title
    fill_in "Url", with: @qiita_item.url
    click_on "Update Qiita item"

    assert_text "Qiita item was successfully updated"
    click_on "Back"
  end

  test "destroying a Qiita item" do
    visit qiita_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qiita item was successfully destroyed"
  end
end
