require 'rails_helper'

RSpec.describe Country, type: :model do
  it { should have_valid(:name).when('Country') }
  it { should_not have_valid(:name).when(nil, '') }

  # it { should have_valid(:description).when('any text') }
  # it { should_not have_valid(:description).when(nil, '') }

  it { should have_valid(:photo_url).when('http://google.com') }
  it { should_not have_valid(:photo_url).when(nil, '') }
end
