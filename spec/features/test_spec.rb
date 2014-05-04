require 'spec_helper'


require 'simplecov'
SimpleCov.start




describe "Test" do

  before(:each) do
    @campaign = FactoryGirl.create(:campaign)
  end





  it "GET BANNER PAGE" do

    1.times do
      visit('/get_banner')
    end

    expect(page).to have_selector 'a'
    expect(page).to have_selector 'img'


    #expect(page).to have_content 'test name'
    #expect(page).to have_content 'нет изображения'


  end
end
