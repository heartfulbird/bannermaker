FactoryGirl.define do

  factory :campaign do |c|
    c.name 'test name'
    c.link 'http://stackoverflow.com/'
    c.image Rack::Test::UploadedFile.new("#{Rails.root}/spec/support/images/travel.jpg", 'image/jpg')
    c.show 10
    c.click 1
    c.conversion 10
  end

end
