describe 'caixas de seleção', :smoke do 
    
    before(:each) do
        visit '/checkboxes'
    end

    it 'marcando uma opção' do
        check('thor') #id
    end

    it 'desmarcando uma opção' do
        uncheck('antman') #name
    end

    it 'marcando find com set true' do
        find('input[value=cap]').set(true) #imputsemidesemname
    end

    it 'desmarcando find com set false' do
        find('input[value=guardians]').set(false) #imputsemidesemname
    end

    after(:each) do
        sleep 3
    end

end