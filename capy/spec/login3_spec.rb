describe 'Login com cadastros', :form3 do
    
    before(:each) do
        visit '/access'
    end

        it 'login com sucesso' do

            within ('#login') do
                find('input[name=username]').set 'stark'
                find('input[name=password]').set 'jarvis!'
                click_button 'Entrar'
            end

        expect(find('#flash')).to have_content  'Olá, Tony Stark. Você acessou a área logada!'
        end


        it 'Cadastro com sucesso' do
            within ('#signup') do
                find('input[name=username]').set 'renato'
                find('input[name=password]').set '123456'
                click_link 'Criar Conta'
            end
            #click_button 'Entrar'

        expect(page).to have_content  'Dados enviados. Aguarde aprovação do seu cadastro!'
        end
end