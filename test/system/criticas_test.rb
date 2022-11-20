require "application_system_test_case"

class CriticasTest < ApplicationSystemTestCase
  setup do
    @critica = criticas(:one)
  end

  test "visiting the index" do
    visit criticas_url
    assert_selector "h1", text: "Criticas"
  end

  test "should create critica" do
    visit criticas_url
    click_on "New critica"

    fill_in "Comentario", with: @critica.comentario
    fill_in "Filme", with: @critica.filme
    click_on "Create Critica"

    assert_text "Critica was successfully created"
    click_on "Back"
  end

  test "should update Critica" do
    visit critica_url(@critica)
    click_on "Edit this critica", match: :first

    fill_in "Comentario", with: @critica.comentario
    fill_in "Filme", with: @critica.filme
    click_on "Update Critica"

    assert_text "Critica was successfully updated"
    click_on "Back"
  end

  test "should destroy Critica" do
    visit critica_url(@critica)
    click_on "Destroy this critica", match: :first

    assert_text "Critica was successfully destroyed"
  end
end
