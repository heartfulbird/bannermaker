require 'spec_helper'


require 'simplecov'
SimpleCov.start

#Capybara.default_driver = :selenium


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


  it 'visit MAIN PAGE and click link New campaign' do
    visit('/')
    expect(page).to have_content 'Make your banner!'

    click_link 'Make your banner!'
    expect(page).to have_content 'New campaign'
  end



  it 'CREATE NEW CAMPAIGN' do
    visit('/campaigns/new')

    fill_in 'Name', with: 'NEW TEST CAMPAIGN'
    fill_in 'Link', with: 'http://google.com'
    click_button('Create Campaign')

    expect(page).to have_content 'Campaign was successfully created.'

    #page.save_screenshot('CREATE_NEW_CAMPAIGN_RESULT.png')
  end


  it 'SHOW CAMPAIGN' do
    visit('/campaigns')

    find('tr#1').click_link('Show')

    expect(find('h2')).to have_content 'test name'

  end






end
