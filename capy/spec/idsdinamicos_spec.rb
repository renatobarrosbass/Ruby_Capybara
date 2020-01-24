describe 'ID´s Dinâmicos', :dinamico do
    
    before(:each) do
        visit '/access'
    end

    it 'cadastro' do

        find('input[id$=UsernameInput]').set 'renato' # $ termina com 
        find('input[id^=PasswordInput]').set '123456' # ^ começa com
        find('a[id*=GetStartedButton]').click # * contem

    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    sleep 3
    end
end
