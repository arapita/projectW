class AddNrRejToPrzyjazdy < ActiveRecord::Migration
  def change
    add_column :przyjazdies, :nr_rej, :string
  end
end
