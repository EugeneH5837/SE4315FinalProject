class CreateTierThreeLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :tier_three_links do |t|
      t.string :links

      t.timestamps
    end
  end
end
