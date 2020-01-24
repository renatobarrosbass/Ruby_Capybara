describe 'Caixa de opções', :smoke do
    
    it 'item específico simples' do 

        visit '/dropdown'
            select('Loki', from: 'dropdown') #apenas qdo o select tem ID se não tiver...
        sleep 3 # temporário
    end

    it 'Item específico com o find' do
    
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3        
    end

    it 'Qualquer item', :sample do
        
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3

    end
    


  
end