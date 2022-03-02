require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "should create cliente" do
    visit clientes_url
    click_on "New cliente"

    fill_in "Empresa", with: @cliente.empresa_id
    fill_in "Name", with: @cliente.name
    fill_in "Nro doc", with: @cliente.nro_doc
    check "Persona juridica" if @cliente.persona_juridica
    fill_in "Telefono", with: @cliente.telefono
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "should update Cliente" do
    visit cliente_url(@cliente)
    click_on "Edit this cliente", match: :first

    fill_in "Empresa", with: @cliente.empresa_id
    fill_in "Name", with: @cliente.name
    fill_in "Nro doc", with: @cliente.nro_doc
    check "Persona juridica" if @cliente.persona_juridica
    fill_in "Telefono", with: @cliente.telefono
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "should destroy Cliente" do
    visit cliente_url(@cliente)
    click_on "Destroy this cliente", match: :first

    assert_text "Cliente was successfully destroyed"
  end
end
