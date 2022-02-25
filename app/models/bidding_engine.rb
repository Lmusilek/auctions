class BiddingEngine < ApplicationRecord
  # def initialize(auction, amount, bidder)
  #   @auction = auction
  #   @bid = Bid.new(bidder: bidder, auction: @auction, amount: amount)
  # end

  def self.bid!(amount, bidder, auction)
    bid = Bid.new(bidder: bidder, auction: auction, amount: amount)
    if bid.valid? && BiddingEngine.is_bigger?(bid, auction)
      bid.save
    else
      auction.errors.add(:bid, "must be bigger than the last bid on the auction")
    end
  end

  private

  def self.is_bigger?(bid, auction)
    return true unless auction.bids.last
    auction.bids.last.amount < bid.amount
  end
end