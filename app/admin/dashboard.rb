ActiveAdmin.register_page "Dashboard" do

  menu :priority => 2, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

columns do
      column do
        panel 'Top VGA' do

            Calc.all.each do |a|
              @a = Cpu.find(a.cpu_id)
              @a.count_calc = Calc.where('cpu_id = ?',a.cpu_id).count
              @a.save
            end
            @a = Cpu.order(count_calc: :desc)
            @a = @a.where('count_calc > 0').limit(10)
            @a.each do |k|
              ul  (Company.find(k.company).name+' '+Brand.find(k.brand_id).name+' '+k.name).to_s
            end
        end
      end

      column do
        panel 'Top VGA' do
        Calc.all.each do |a|
          @a = Vga.find(a.vga_id)
          @a.count_calc = Calc.where('vga_id = ?',a.vga_id).count
          @a.save
        end
          Vga.where('count_calc > 0').order(count_calc: :desc).limit(10).each do |k|
            ul (Company.find(k.company).name + ' ' + k.name).to_s
          end
        end
      end

      column do
        panel 'Count accsesories' do
        ul   'Count cpu: ' + Cpu.count.to_s
        ul   'Count vga: ' + Vga.count.to_s
        ul   'Count calculation: ' + Calc.count.to_s
        ul   'Max power: ' + Calc.maximum('calc').to_s
        ul   'Min power: ' + Calc.minimum('calc').to_s
        ul   'Average power: ' + Calc.average('calc').to_i.to_s
        ul   'Sum power: ' + Calc.sum('calc').to_s
      end
      end
end


    # end
  end # content
end


