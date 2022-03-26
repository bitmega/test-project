require "rails_helper"

feature "Equipment management", type: :feature do
  let(:user) {
    User.create(email: "test@example.com", password: "123123123", password_confirmation: "123123123")
  }
  let(:equipment) {
    user.equipments.create(name: "Test", description: "Test")
  }
  scenario "User can see the form" do
    sign_in user

    visit "/equipment/new"

    expect(page).to have_field("Name")
    expect(page).to have_field("Description")
  end

  scenario "User can submit and save the equipment" do
    sign_in user
    visit "/equipment/new"

    fill_in "Name", with: "Test equipment"
    fill_in "Description", with: "Example description"

    expect{
      click_button "Save"
    }.to change{Equipment.count}.by(1)
  end

  scenario "User can add image to an equipment" do
    sign_in user

    visit "/equipment/#{equipment.id}/equipment_images/new"

    attach_file "Image", file_fixture("blank.jpeg")

    expect {
      click_button "Save"
    }.to change{EquipmentImage.count}.by(1)
  end
end