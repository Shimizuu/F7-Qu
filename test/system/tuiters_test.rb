require "application_system_test_case"

class TuitersTest < ApplicationSystemTestCase
  setup do
    @tuiter = tuiters(:one)
  end

  test "visiting the index" do
    visit tuiters_url
    assert_selector "h1", text: "Tuiters"
  end

  test "creating a Tuiter" do
    visit tuiters_url
    click_on "New Tuiter"

    fill_in "Content", with: @tuiter.content
    fill_in "User", with: @tuiter.user_id
    click_on "Create Tuiter"

    assert_text "Tuiter was successfully created"
    click_on "Back"
  end

  test "updating a Tuiter" do
    visit tuiters_url
    click_on "Edit", match: :first

    fill_in "Content", with: @tuiter.content
    fill_in "User", with: @tuiter.user_id
    click_on "Update Tuiter"

    assert_text "Tuiter was successfully updated"
    click_on "Back"
  end

  test "destroying a Tuiter" do
    visit tuiters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tuiter was successfully destroyed"
  end
end
