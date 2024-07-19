require "test_helper"

class MissingPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @missing_person = missing_people(:one)
  end

  test "should get index" do
    get missing_people_url
    assert_response :success
  end

  test "should get new" do
    get new_missing_person_url
    assert_response :success
  end

  test "should create missing_person" do
    assert_difference("MissingPerson.count") do
      post missing_people_url, params: { missing_person: {  } }
    end

    assert_redirected_to missing_person_url(MissingPerson.last)
  end

  test "should show missing_person" do
    get missing_person_url(@missing_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_missing_person_url(@missing_person)
    assert_response :success
  end

  test "should update missing_person" do
    patch missing_person_url(@missing_person), params: { missing_person: {  } }
    assert_redirected_to missing_person_url(@missing_person)
  end

  test "should destroy missing_person" do
    assert_difference("MissingPerson.count", -1) do
      delete missing_person_url(@missing_person)
    end

    assert_redirected_to missing_people_url
  end
end
