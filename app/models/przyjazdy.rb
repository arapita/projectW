class Przyjazdy < ActiveRecord::Base

  after_save :zapis_licznika
  belongs_to :pojazdy, :foreign_key => "nr_rej", :primary_key => "nr_rejestracyjnyn"

  def zapis_licznika

    self.pojazdy.lokalizacja = 'Baza'
    self.pojazdy.stan_licznika = self.stan_licz
    self.pojazdy.save

  end


end
