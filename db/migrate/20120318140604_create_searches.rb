class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :marka
      t.string :lokalizacja
      t.string :dysponent
      t.integer :min_stan
      t.integer :max_stan

      t.timestamps
    end
  end
end
