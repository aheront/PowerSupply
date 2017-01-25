class Calc < ApplicationRecord
  belongs_to :cpu
  belongs_to :vga,optional:true
  belongs_to :ram
  belongs_to :water_cooling
  belongs_to :motherboard
  validates :cpu,:ram,:water_cooling,:motherboard,:fan_count,:ram_count,:sata_count, presence:true
  def calculation(calc,vga_present)
    cpu = Cpu.find(calc.cpu_id)
    if vga_present
    vga = Vga.find(calc.vga_id)
    vga_power = vga.vga_power
    else
      calc.vga_count = 0
      vga_power = 0
    end
    ram = Ram.find(calc.ram_id)
    wat = WaterCooling.find(calc.water_cooling_id)
    math = Motherboard.find(calc.motherboard_id)
    calc.calc = ((cpu.power + (vga_power*calc.vga_count) + (ram.power_ram * calc.ram_count) + (calc.fan_count*3) + wat.water_power + math.power + (calc.sata_count * 25)) * 1.3).to_i
  end
end
