require 'rails_helper'

RSpec.describe BiddingEngine, type: :model do


  describe ".bid!" do
    it "create a new bid on an auction" do
      seller = User.create(:email => 'jane@doe.com', :password => 'pw1234' )
      bidder = User.create(:email => 'john@doe.com', :password => 'pw1234' )

      auction = Auction.create(title: 'Anything', description: 'Lorem ipsum',
                   start_date: DateTime.now, end_date: DateTime.now + 1.week,
                   user_id: seller.id)

      BiddingEngine.bid!(100, bidder, auction)
      expect(auction.errors).to be_empty

      described_class.bid!(90, bidder, auction)
      expect(auction.errors[:bid].first).to eq "must be bigger than the last bid on the auction"
    end
  end
end
