FactoryGirl.define do

  factory :campaign do
    name 'test name'
    link 'http://stackoverflow.com/'
    image_file_name  'travel.jpg'
    image_content_type 'image/jpeg'
  end

end
