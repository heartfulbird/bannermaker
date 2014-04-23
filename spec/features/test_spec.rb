require 'spec_helper'
Rails.env = 'development'

describe "first_test" do
  fixtures :campaigns

  it "visit site" do

    1000.times do
      visit('/get_banner')
    end

    expect(page).to have_selector 'a'
  end
end
