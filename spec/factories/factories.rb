FactoryGirl.define do

  factory :campaign do
    name 'test name'
    link 'http://stackoverflow.com/'
    image_file_name  'travel.jpg'
    image_content_type 'image/jpeg'
    #image File.join(Rails.root, 'spec', 'support', 'images', 'travel.jpg')
    show 10
    click 1
    conversion 10
  end

end
