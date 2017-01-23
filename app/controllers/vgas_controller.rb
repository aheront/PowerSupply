class VgasController < ApplicationController
  def index
  end

  def new
    @vga = Vga.new
  end

  def create
    @vga = Vga.create(vga_params)
    if @vga.save
      redirect_to new_vga_path
    else
      render new_vga_path
    end
  end
  private
  def vga_params
    params.require(:vga).permit(:brand_id,:company_id,:vga_name,:vga_power)
  end
end
