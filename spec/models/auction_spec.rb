require 'rails_helper'

RSpec.describe Auction, type: :model do

  let(:auction_subject) { Auction.new(title: "Kukri", description: "Cool dagger", start_date: DateTime.now, end_date: DateTime.now + 1.week) }

  it "is valid with valid attributes" do
    auction = auction_subject
    
    expect(auction).to be_valid
  end

  it "is not valid without a title" do
    auction = auction_subject

    auction.title = nil
    
    expect(auction).to_not be_valid
  end

  it "is not valid without a description" do
    auction = auction_subject

    auction.description = nil

    expect(auction).to_not be_valid
  end

  it "is not valid without a start_date" do
    auction = auction_subject

    auction.start_date = nil
    
    expect(auction).to_not be_valid
  end

  it "is not valid without a end_date" do 
    auction = auction_subject

    auction.end_date = nil
      
    expect(auction).to_not be_valid
  end
end
