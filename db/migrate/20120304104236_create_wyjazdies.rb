class CreateWyjazdies < ActiveRecord::Migration
  def change
    create_table :wyjazdies do |t|
      t.string :data_wyjazdu
      t.string :godz_wyjazdu
      t.string :marka_poj
      t.string :nr_rej
      t.string :kierowca
      t.string :miejsce
      t.integer :stan_licznika

      t.timestamps
    end
  end
end
