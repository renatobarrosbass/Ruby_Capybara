describe 'Mouse Hover', :hovers do
    before(:each) do
        visit '/hovers'
    end

    it 'quando passo o mouse sobre o Blade' do
        card = find('img[alt=Blade]')
        card.hover
       
        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        card = find('img[alt="Pantera Negra"]') #qdo o atributo interno tem caracteres especiais ou espaços insiro dentro dele aspas duplas, transformando=o numa string
        card.hover
       
        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o Blade' do
        card = find('img[alt="Homem Aranha"]')
        card.hover
       
        expect(page).to have_content 'Nome: Homem Aranha'
    end

end