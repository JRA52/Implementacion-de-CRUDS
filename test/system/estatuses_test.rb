require "application_system_test_case"

class EstatusesTest < ApplicationSystemTestCase
  setup do
    @estatus = estatuses(:one)
  end

  test "visiting the index" do
    visit estatuses_url
    assert_selector "h1", text: "Estatuses"
  end

  test "should create estatus" do
    visit estatuses_url
    click_on "New estatus"

    fill_in "Name", with: @estatus.name
    click_on "Create Estatus"

    assert_text "Estatus was successfully created"
    click_on "Back"
  end

  test "should update Estatus" do
    visit estatus_url(@estatus)
    click_on "Edit this estatus", match: :first

    fill_in "Name", with: @estatus.name
    click_on "Update Estatus"

    assert_text "Estatus was successfully updated"
    click_on "Back"
  end

  test "should destroy Estatus" do
    visit estatus_url(@estatus)
    click_on "Destroy this estatus", match: :first

    assert_text "Estatus was successfully destroyed"
  end
end
