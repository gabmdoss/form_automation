class Form < SitePrism::Page
    set_url 'https://demoqa.com/automation-practice-form'

    element :first_name_input, 'input[placeholder="First Name"]'
    element :last_name_input, 'input[placeholder="Last Name"]'
    element :email_input, 'input[placeholder="name@example.com"]'
    element :gender_btn, 'label[for="gender-radio-2"]'
    element :mobile_input, 'input[placeholder="Mobile Number"]'
    element :date_birth_input, 'input[id="dateOfBirthInput"]'
    element :street_address_input, 'textarea[placeholder="Current Address"]'
    element :sports_label, 'label[for="hobbies-checkbox-1"]'
    element :reading_label, 'label[for="hobbies-checkbox-2"]'
    element :music_label, 'label[for="hobbies-checkbox-3"]'
    element :upload_picture_btn, '#uploadPicture'

    def first_name
        @name = Faker::Name.female_first_name
        first_name_input.set(@name)
    end
    
    def last_name
        last_name_input.set(Faker::Name.last_name)
    end

    def email
        t = date_time.gsub!(/[:.]/,' ')
        email = "#{@name}#{t.delete!(' ')}" + "@gabautomation.com"
        email_input.set(email.downcase)
    end

    def gender
        gender_btn.click
    end

    def mobile
        mobile_input.set(Faker::PhoneNumber.subscriber_number(length: 10))
    end

    def date_birth
        date_birth_input.set(Faker::Date.between(from: '1920-01-01', to: '2005-01-01'))
    end

    def street_address
        street_address_input.set(Faker::Address.street_address)
    end

    def state
        find('#state').click
        Capybara.current_session.find(:xpath, "//*[text() = 'NCR']", wait: 5).click
    end

    def city
        find('#city').click
        Capybara.current_session.find(:xpath, "//*[text() = 'Delhi']", wait: 5).click
    end

    def select_picture(insert_picture)
        upload_picture_btn.set(insert_picture)
    end

    def register
        find('button[id="submit"]', visible: false).click
    end
end
