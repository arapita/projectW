class Wyjazdy < ActiveRecord::Base

  after_save :zapis_lokacji
  #after_save :dane
  belongs_to :pojazdy, :foreign_key => "nr_rej", :primary_key => "nr_rejestracyjnyn"

  def zapis_lokacji

    self.pojazdy.lokalizacja = self.miejsce
    self.pojazdy.save


  end

end
