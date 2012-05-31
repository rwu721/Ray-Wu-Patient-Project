# == Schema Information
#
# Table name: microposts
#
#  id         :integer         not null, primary key
#  text       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe Micropost do
  
 # let (:Micropost){FactoryGirl.create(:Micropost)}
  before do
  	#this might be wrong
  	@micropost = Micropost.new(text: "this is a test")
  end
  subject { @micropost }

  it { should respond_to(:text) }
  it { should respond_to(:created_at)}

  it { should be_valid }

  describe "when micropost is not present" do
  	before { @micropost.text = " " }
  	it { should_not be_valid }
  end

  describe "when micropost is too long" do
  	before { @micropost.text = "a" * 150 }
  	it { should_not be_valid }
  end

end
