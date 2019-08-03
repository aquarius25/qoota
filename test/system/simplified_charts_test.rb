require "application_system_test_case"

class SimplifiedChartsTest < ApplicationSystemTestCase
  setup do
    @simplified_chart = simplified_charts(:one)
  end

  test "visiting the index" do
    visit simplified_charts_url
    assert_selector "h1", text: "Simplified Charts"
  end

  test "creating a Simplified chart" do
    visit simplified_charts_url
    click_on "New Simplified Chart"

    fill_in "Content", with: @simplified_chart.content
    fill_in "Item", with: @simplified_chart.item
    fill_in "Word", with: @simplified_chart.word
    click_on "Create Simplified chart"

    assert_text "Simplified chart was successfully created"
    click_on "Back"
  end

  test "updating a Simplified chart" do
    visit simplified_charts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @simplified_chart.content
    fill_in "Item", with: @simplified_chart.item
    fill_in "Word", with: @simplified_chart.word
    click_on "Update Simplified chart"

    assert_text "Simplified chart was successfully updated"
    click_on "Back"
  end

  test "destroying a Simplified chart" do
    visit simplified_charts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Simplified chart was successfully destroyed"
  end
end
