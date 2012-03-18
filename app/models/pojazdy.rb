class Pojazdy < ActiveRecord::Base
  belongs_to :user

  def self.search(search)
  if search
    where('nr_rejestracyjnyn LIKE?', "#{search}")
  else
    scoped
  end
  end


end
