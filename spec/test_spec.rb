# Variáveis
name = "Joao"
last_name = "Silva"
email = "joaosilva123@mail.com"
endereco = "Rua Engenhiro Tobias, 83"
universidade = "Faculdade Mackenzie"
profissao = "Analista de Sistemas"
genero = "Masculino"
idade = 30


describe "Automação Bionexo" do

    it "Preencher formulario", :new_user do
        puts "acessando a pagina"
        visit "/users/new"
        puts page.title
        expect(page.title).to eql "Automação com Batista"        
        fill_in 'user_name', with: name
        fill_in 'user_lastname', with: last_name
        fill_in 'user_email', with: email
        fill_in 'user_address', with: endereco
        fill_in 'user_university', with: universidade
        fill_in 'user_profile', with: profissao
        fill_in 'user_gender', with: genero
        fill_in 'user_age', with: idade        
        click_button 'commit'        
        expect(find('#notice').visible?).to be true
    end
end

