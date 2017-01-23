class CpusController < ApplicationController
  def new
    @cpu = Cpu.new
  end

  def create
    @cpu = Cpu.create(cpu_params)
    if @cpu.save
      redirect_to new_cpu_path
    else
      render new_cpu_path
    end
  end
  private
  def cpu_params
    params.require(:cpu).permit(:brand_id,:company_id,:name,:power,:socket_cpu_id)
  end
end
