Dado('que cliente acessa formulário de cadastro') do
    @form = Form.new
    @form.load
end
  
Quando('inserir os dados de registro') do
    @form.first_name
    @form.last_name
end
