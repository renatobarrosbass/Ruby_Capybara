describe 'Drag and Drop', :drop do

    before(:each) do
        visit '/drag_and_drop'
    end

    
    it 'homem aranha pertece ao time do stark' do
        stark = find('.team-stark .column')        
        cap = find('.team-cap .column')

        spiderman = find('img[alt$=Aranha]') # esse $ é um regex. Lê-se: img com o atrtibuto alt que termina com aranha
        spiderman.drag_to stark

        expect(stark).to have_css 'img[alt$=Aranha]'
        expect(cap).not_to have_css 'img[alt$=Aranha]'
    end

    after(:each) do
        sleep 3
    end

end