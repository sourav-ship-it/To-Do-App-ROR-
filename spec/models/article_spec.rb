require 'rails_helper'

RSpec.describe Article, :type => :model do
    subject { described_class.new }

    it "is valid with valid attributes" do
        subject.title = "Anything"
        subject.text = "SOmething" 
        expect(subject).to be_valid
    end

    it "is not valid without a title" do
        expect(subject).to_not be_valid
    end

    it "is not valid without a text" do
        subject.title = "Anything"
        expect(subject).to_not be_valid
    end
end