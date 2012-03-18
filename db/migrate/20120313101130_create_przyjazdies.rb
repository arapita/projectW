class CreatePrzyjazdies < ActiveRecord::Migration
  def change
    create_table :przyjazdies do |t|
      t.string :data_przyj
      t.string :godz_przy
      t.integer :stan_licz
      t.string :zat_paliwo

      t.timestamps
    end
  end
end
