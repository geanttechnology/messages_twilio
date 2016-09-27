require 'rails_helper'

describe "the add a message process" do
  it "adds a new message", js: true do
    visit messages_path
    click_on "New message"
    select('someone', :from => 'To')
    fill_in "From", :with => '5032001234'
    fill_in "Body", :with => "Hello"
    click_on "Create Message"
    expect(page).to have_content "Hello"
  end
end
