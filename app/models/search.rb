class Search < ActiveRecord::Base

  #attr_accessible :marka, :lokalizacja, :dysponent, :min_stan, :max_stan

def pojazdy
  @pojazdies ||= find_pojazdy
end

private

def find_pojazdy
  Pojazdy.find(:all, :conditions => conditions)
end

def marka_conditions
  ["marka LIKE ?", "%#{marka}%"] unless marka.blank?
end

def lokalizacja_conditions
  [" LIKE ?", "%#{lokalizacja}%"] unless lokalizacja.blank?
end

def dysponent_conditions
  ["dysponent LIKE ?", "%#{dysponent}%"] unless dysponent.blank?
end

def min_stan_conditions
  ["stan_licznika >= ?", min_stan] unless min_stan.blank?
end

def max_stan_conditions
  ["stan_licznika <= ?", max_stan] unless max_stan.blank?
end

def conditions
  [conditions_clauses.join(' AND '), *conditions_options]
end

def conditions_clauses
  conditions_parts.map { |condition| condition.first }
end

def conditions_options
  conditions_parts.map { |condition| condition[1..-1] }.flatten
end

def conditions_parts
  private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
end


end
