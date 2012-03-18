class CreatePojazdies < ActiveRecord::Migration
  def change
    create_table :pojazdies do |t|
      t.string :nr_rejestracyjnyn
      t.string :marka
      t.string :dysponent
      t.integer :stan_licznika
      t.string :lokalizacja

      t.timestamps
    end
  end
end
