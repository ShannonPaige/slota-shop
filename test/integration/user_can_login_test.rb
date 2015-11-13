require "test_helper"

class UserCanLoginTest < ActionDispatch::IntegrationTest
  test "user can login" do
    category_1 = Oil.create(name: "Lard")

    item_1 = Chip.create(name: "Slotachips", price: 20, description: "Super yummy", oil_id: category_1.id)

    user = User.create(username: "John", password: "Password")

    visit chips_path

    within("#slotachips") do
      click_button "Add to Cart"
    end

    visit "/"

    within (".nav-wrapper") do
      assert page.has_content?("Login")
      assert page.has_content?("Create Account")
    end

    click_link "Login"

    fill_in "Username", with: "John"
    fill_in "Password", with: "Password"

    click_button "Login"

    assert page.has_content? "Logged in as John"
    assert_equal user_path(User.last.id), current_path

    refute page.has_content?("Login")
    assert page.has_content?("Logout")

    visit "/cart"

    assert page.has_content?("Slotachips")

    click_link "Logout"

    refute page.has_content?("Logout")
    assert page.has_content?("Login")
  end
end
