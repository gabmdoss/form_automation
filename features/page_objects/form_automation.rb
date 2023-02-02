class Form < SitePrism::Page
    set_url 'https://demo.automationtesting.in/Register.html'

    element :first_name_input, :xpath, '//*[@id="basicBootstrapForm"]/div[1]/div[1]/input'
    element :last_name_input, :xpath, '//*[@id="basicBootstrapForm"]/div[1]/div[2]/input'

    def first_name
        name = Faker::Name.first_name
        first_name_input.set(name)
    end
    
    def last_name
        name = Faker::Name.last_name
        last_name_input.set(name)
    end
end
