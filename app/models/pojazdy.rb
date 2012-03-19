class Pojazdy < ActiveRecord::Base
  belongs_to :user

  validates :dysponent, :format => { :with => /\A[a-zA-Z]+\z/,
    :message => "moze skladac sie tylko z liter" }
  validates_presence_of :dysponent, :message => "Nie moze byc puste."
  
  validates_presence_of :marka, :message => "Nie moze byc puste."

  validates :stan_licznika, :numericality => { :greater_than => 1,
    :message => " musi byc wiekszy niz 0" }, :presence => true
  validates_presence_of :stan_licznika, :message => "Nie moze byc puste."

  validates :nr_rejestracyjnyn, :length => { :in => 7..8,
    :message => "musi skladac sie z 7-8 znakow"}, :presence => true
  validates_presence_of :nr_rejestracyjnyn, :message => "Nie moze byc puste."

  def self.search(search)
  if search
    where('nr_rejestracyjnyn LIKE?', "#{search}")
  else
    scoped
  end
  end


end
