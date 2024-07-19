require "application_system_test_case"

class MissingPeopleTest < ApplicationSystemTestCase
  setup do
    @missing_person = missing_people(:one)
  end

  test "visiting the index" do
    visit missing_people_url
    assert_selector "h1", text: "Missing people"
  end

  test "should create missing person" do
    visit missing_people_url
    click_on "New missing person"

    click_on "Create Missing person"

    assert_text "Missing person was successfully created"
    click_on "Back"
  end

  test "should update Missing person" do
    visit missing_person_url(@missing_person)
    click_on "Edit this missing person", match: :first

    click_on "Update Missing person"

    assert_text "Missing person was successfully updated"
    click_on "Back"
  end

  test "should destroy Missing person" do
    visit missing_person_url(@missing_person)
    click_on "Destroy this missing person", match: :first

    assert_text "Missing person was successfully destroyed"
  end
end
