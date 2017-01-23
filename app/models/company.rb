class Company < ApplicationRecord
  has_many :cpus
  has_many :vgas
end
