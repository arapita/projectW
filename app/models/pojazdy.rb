class Pojazdy < ActiveRecord::Base
  belongs_to :user

  def self.search(search)
  if search
    where('nr_rejestracyjnyn LIKE?', "#{search}")
  else
    scoped
  end
  end

  def self.search2(ord)
    if ord
      where('lokalizacja LIKE?', "BAZA")
    end

  end
end
