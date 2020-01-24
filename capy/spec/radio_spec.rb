describe 'botões de rádio', :radio do 
    
    before(:each) do
        visit '/radios'
    end

    it 'seleção por ID' do
        choose('cap') #selecione por id
    end

    it 'seleção por find e CSS Selector' do
        find('input[value=guardians]').click
    end

    after(:each) do
        sleep 3
    end

end