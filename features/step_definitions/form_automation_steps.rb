Dado('que cliente acessa formulário de cadastro') do
    @form = Form.new
    @form.load
end
  
Quando('inserir os dados de cadastro') do
    @form.first_name
    @form.last_name
    @form.email
    @form.gender
    @form.mobile
    @form.date_birth
    @form.hobbies
    @form.street_address
    @form.state
    @form.city
end

Quando('submeter o registro') do
    @form.register
    #vai gerar erro pois o site está com bug no botão 'submit'
end
  
Então('é realizado o registro do cliente') do
    #qa não sabe qual é a página após registrar
end
  
