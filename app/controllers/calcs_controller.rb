class CalcsController < ApplicationController
  def index
  end

  def new
   @calc = Calc.new
  end

  def create
    @calc = Calc.create(calc_params)
    if @calc.valid?
      @calc.save
      @calc.calculation(@calc, calc_params[:vga_id].present?)
    else
      render new_calc_path
    end
  end

  private
  def calc_params
    params.require(:calc).permit(:cpu_id,:vga_id,:ram_count,:ram_id,
                                 :vga_count,:fan_count,:water_cooling_id,
                                 :motherboard_id,:sata_count)
  end
end
