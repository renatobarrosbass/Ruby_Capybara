describe 'Upload', :upload do
    before(:each) do
        visit '/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/Comandos Git Bash]'
        @imagem = Dir.pwd + '/spec/fixtures/ExecRegressaoCockpit-231219Dt_1735H.png'
    end

    it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'Comandos Git Bash]'
    end

    it 'upload de imagem' do
        attach_file('file-upload', @imagem)
        click_button 'Upload'

        img = find('#new-image')
        expect(img[:src]).to include '/uploads/ExecRegressaoCockpit-231219Dt_1735H.png'
    end
    
    after(:each) do
        sleep 3
    end

end