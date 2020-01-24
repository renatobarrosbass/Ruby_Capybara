describe 'Login com campos dinâmicos', :smoke do
    
    it 'login com sucesso' do
            visit '/login2'

            fill_in 'userId', with: 'stark'
            fill_in 'password', with: 'jarvis!'

            login_form = find('#login')

            case login_form.text
            when /Dia/
                find('#day').set '29'
            when /Mês/
                find('#month').set '05'
            when /Ano/
                find('#year').set '1970'
            end        

            click_button 'Login'

            expect(find('#flash')).to have_content  'Olá, Tony Stark. Você acessou a área logada!'
    end
end