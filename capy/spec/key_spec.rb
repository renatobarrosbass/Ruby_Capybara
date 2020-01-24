describe 'Teclado', :key do

    before(:each) do
        visit '/key_presses'
    end

    
    it 'enviando teclas' do
    teclas = %i[tab escape space enter shift control alt delete] #criando array de símbolos (no caso teclas)
        teclas.each do |t|
        find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 1
        end 
    end

    it 'enviando letras' do
    letras = %w[a s t f g h j k l] #criando array de String (letras)
        letras.each do |l|
        find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1
        end
    end
end