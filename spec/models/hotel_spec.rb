require 'rails_helper'

RSpec.describe Hotel, type: :model do
  it { should have_valid(:name).when('country') }
  it { should_not have_valid(:name).when(nil, '') }

  it { should have_valid(:location).when('city') }
  it { should_not have_valid(:location).when(nil, '') }

  it { should have_valid(:photo_url).when('https://google.com') }
  it { should_not have_valid(:photo_url).when(nil, '') }

  it { should have_valid(:description).when('a description of hotel') }
  it { should_not have_valid(:description).when(nil, '') }
end
