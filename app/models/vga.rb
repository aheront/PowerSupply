class Vga < ApplicationRecord
  belongs_to :company
  belongs_to :brand,optional:true
end
