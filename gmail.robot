*** Settings ***
Library  SeleniumLibrary
#Suite Setup       Open Setup
#Suite Teardown    Close
##Variables   path.py{file_name}

*** Variables ***
${browser}        chrome
${url}            https://accounts.google.com/InteractiveLogin/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&emr=1&followup=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&osid=1&passive=1209600&service=mail&ifkv=AXo7B7ULfiPl7XZ_k19YNNczXY5XJTOE0P0dFYnpswzC4NoFDfiIJyPnGuVYQd6zozo2vrKAjsPY&theme=glif&flowName=GlifWebSignIn&flowEntry=ServiceLogin

*** Test Cases ***
Login Status
	open browser    ${url}  ${browser}
    Input text   //input[@type="email"]  rajiraji140698@gmail.com
    Wait Until Element Is Visible   xpath://span[text()='Next']
    Click Element   xpath://span[text()='Next']
    Wait Until Element Is Visible   //input[@type="password"]
    Input Text   //input[@type="password"]  RajiRaji140698
    Wait Until Element Is Visible   xpath://span[text()='Next']
    Click Element   xpath://span[text()='Next']
    Sleep    5
    Click Element    //div[@class="T-I T-I-KE L3"]
    Wait Until Element Is Visible   //input[@class="agP aFw"]
    Input Text  //input[@class="agP aFw"]   rajiraji140698@gmail.com
    Input Text    //input[@name="subjectbox"]   Update
    Wait Until Element Is Visible   //div[@class="Am Al editable LW-avf tS-tW"]
    Input Text    //div[@class="Am Al editable LW-avf tS-tW"]   Hi, Thank you for giving update
    Click Element    //div[@class="T-I J-J5-Ji aoO v7 T-I-atl L3"]
    Wait Until Element Is Visible   //a[@aria-label="Sent"]
    Click Element    //a[@aria-label="Sent"]

#*** Keywords ***
#open setup
#    Open Browser    ${url}    ${browser}
#    Maximize Browser Window
#
#close
#	Close All Browsers
