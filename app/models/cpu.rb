class Cpu < ApplicationRecord
  belongs_to :company
  belongs_to :brand
  belongs_to :socket_cpu
end
