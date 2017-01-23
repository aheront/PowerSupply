class CalcsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @cpu = Cpu.find(calc_params[:cpu_id])
    @vga = Vga.find(calc_params[:vga_id])
    @ram = Ram.find(calc_params[:ram_id])
    @wat = WaterCooling.find(calc_params[:water_cooling_id])
    @ram_count = calc_params[:ram_count].to_i
    @vga_count = calc_params[:vga_count].to_i
    @fan_count = calc_params[:fan_count].to_i
    @calc = @cpu.power+(@vga.vga_power*@vga_count)
           +(@ram.power_ram*@ram_count)+(@fan_count*3)+@wat.water_power
  end
  private
  def calc_params
    params.require(:calc).permit(:cpu_id,:vga_id,:ram_count,:ram_id,:vga_count,:fan_count,:water_cooling_id)
  end
end
