class Pojazdy < ActiveRecord::Base
  belongs_to :user

  validates :dysponent, :format => { :with => /\A[a-zA-Z]+\z/,
    :message => "moze skladac sie tylko z liter" }, :presence => true
  validates :stan_licznika, :numericality => { :greater_than => 1, 
    :message => " musi byc wiekszy niz 0" }, :presence => true
  validates :lokalizacja, :format => { :with => /\A[a-zA-Z]+\z/,
    :message => "moze skladac sie tylko z liter" }, :presence => true
  validates :nr_rejestracyjnyn, :length => { :in => 7..8,
    :message => "musi skladac sie z 7-8 znakow"}, :presence => true
  validates :marka, :presence => true

  def self.search(search)
  if search
    where('nr_rejestracyjnyn LIKE?', "#{search}")
  else
    scoped
  end
  end


end
