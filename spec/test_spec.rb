# Variáveis
name = "Joao"
last_name = "Silva"
email = "joaosilva123@mail.com"
endereco = "Rua Engenhiro Tobias, 83"
universidade = "Faculdade Mackenzie"
profissao = "Analista de Sistemas"
genero = "Masculino"
idade = 30
password = "pasword123"
text = "Potenti fringilla elementum sed rhoncus diam egestas porta at ante gravida,
         etiam platea aliquam vulputate nam curabitur rutrum tortor a quam, morbi senectus
         metus dictum dolor orci donec pharetra at. tempus est eu nec sed turpis risus feugiat,
         laoreet faucibus vel mattis fermentum netus massa quis, purus lacus faucibus rhoncus 
         velit proin. cras velit euismod nostra nullam urna cursus metus ipsum eget mattis,
          at malesuada donec velit condimentum in et etiam nam. ultrices lobortis eget lorem 
          nibh vivamus fusce vitae ad etiam, per magna consequat sed netus eget cursus quis 
          tellus sodales, platea feugiat nullam eget arcu ornare dictum cras. "


describe "Automação Bionexo", :all_tests do

    it "Preencher formulario", :new_user do
        puts "acessando a pagina de Formulario"
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

    it "Inputs e textos", :input_fields do
        puts "acessando a pagina de INputs e Text fields"
        visit "/buscaelementos/inputsetextfield"
        puts page.title
        expect(page.title).to eql "Automação com Batista" 
        fill_in 'first_name', with: name
        fill_in 'last_name', with: last_name
        fill_in 'password', with: password
        fill_in 'email', with: email
        fill_in 'textarea1', with: text
        btnvoltar = find(:xpath, '/html/body/div[2]/div[2]/div[2]/form/div[6]/div/a')
        btnvoltar.click
        #binding.pry
    end
end

