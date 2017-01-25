class Calc < ApplicationRecord
  belongs_to :cpu
  belongs_to :vga,optional:true
  belongs_to :ram
  belongs_to :water_cooling
  belongs_to :motherboard
  validates :cpu,:ram,:water_cooling,:motherboard,:fan_count,:ram_count,:sata_count, presence:true
  def calculation(calc,vga_present)
    calc.calc = ((calc.cpu.power + vga_power(vga_present) + ram_power + fan_power + calc.water_cooling.water_power + calc.motherboard.power + sata_power) * 1.3).to_i
  end
  def vga_power(vga_present)
    if vga_present
       self.vga.vga_power * self.vga_count
    else
       0
    end
  end
  def ram_power
    self.ram.power_ram * self.ram_count
  end
  def fan_power
    self.fan_count * 3
  end
  def sata_power
    self.sata_count * 25
  end
  end

