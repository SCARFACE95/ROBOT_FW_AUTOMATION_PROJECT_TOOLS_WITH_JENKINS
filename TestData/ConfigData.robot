
*** Variables ***
#Locators

#HeaderPage
${SearchTextBox}    xpath://*[@id="search-query"]
${SearchButton}     xpath://button[text()="Search"]

${ListFilter}       xpath:////div[@data-test="search_completed"]


${ContactLink}   xpath://*[text()="Contact"]
${SignInLink}     xpath://*[text()="Sign in"]

${ListOfSearchElements}     xpath://*[@class="card"]
${FirstElementFromSearch}   xpath://*[@class="card"][1]




#ContactPage
${FirstNameBox}     xpath://input[@id="first_name"]
${LastNameBox}      xpath://input[@id="last_name"]
${EmailBox}         xpath://input[@id="email"]
${MessageBox}       xpath://*[@id="message"]
${SendButton}       xpath://input[@class="btnSubmit"]
${Success_Message}  xpath://div[@role="alert"]
${SelectSubject}    xpath://select[@id="subject"]

##Erro messages
${FirstNameError}   xpath://div[@id='first_name_alert']
${LastNameError}    xpath://div[@id='last_name_alert']
${EmailError}       xpath://div[@id='email_alert']
${SubjectError}     xpath://div[@id='subject_alert']
${MessageError}     xpath://div[@id='message_alert']


#Sign In

${RegisterLink}    xpath://*[text()='Register your account']



#RegisterPage
${FirstNameBoxR}         xpath://input[@id='first_name']
${LastNameBoxR}          xpath://input[@id='last_name']
${AddressBoxR}           xpath://input[@id='address']
${PostCodeBoxR}          xpath://input[@id='postcode']
${CityBoxR}              xpath://input[@id='city']
${StateBoxR}             xpath://input[@id='state']
${CountrySelectR}        xpath://*[@id='country']
${PhoneBoxR}             xpath://*[@id='phone']
${BirthDateSelectR}      xpath://*[@id='dob']
${EmailBoxR}             xpath://input[@id='email']
${PasswordBoxR}          xpath://input[@id='password']
${RegisterButton}        xpath://button[text()='Register ']

##ERROR MESSAGES

${FirstNameErrorR}      xpath://div[@data-test="first-name-error"]
${LastNameErrorR}       xpath://div[@data-test="last-name-error"]
${BirthDateErrorR}      xpath://div[@data-test="dob-error"]
${AddressBoxErrorR}     xpath://div[@data-test="address-error"]
${PostCodeErrorR}       xpath://div[@data-test="postcode-error"]
${CityErrorR}           xpath://div[@data-test="city-error"]
${StateErrorR}          xpath://div[@data-test="state-error"]
${CountryErrorR}        xpath://div[@data-test="country-error"]
${PhoneErrorR}          xpath://div[@data-test="phone-error"]
${EmailErrorR}          xpath://div[@data-test="email-error"]
${PasswordErrorR}       xpath://div[@data-test="password-error"]

