class CreateBiddingEngines < ActiveRecord::Migration[7.0]
  def change
    create_table :bidding_engines do |t|
     
      t.timestamps
    end
  end
end
