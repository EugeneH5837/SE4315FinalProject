class CreateTierTwoLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :tier_two_links do |t|
      t.string :links

      t.timestamps
    end
  end
end
