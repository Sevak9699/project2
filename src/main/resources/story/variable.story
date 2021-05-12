
Scenario: Initialize variable with hardcoded value
When I initialize the scenario variable `phoneNumber` with value `+37444433777`


Scenario: Initialize integer with random range from 1-100
When I initialize the scenario variable `userAge` with value `#{randomInt(1, 100)}`


Scenario: Initialize integer with random value using variable from configuration properties
When I initialize the scenario variable `pageNumbers` with value `#{${generatePageNumbers}}`


Scenario: Initialize random string using expressions
When I initialize the scenario variable `descriptionVar` with value `#{generate(regexify'[A-Z]{25}[a-z]{25}[1-9]{500}')}`


Scenario: Initialize first name last name and  UUID and Email using integrated faker library
When I initialize the scenario variable `<variableName>` with value `<variableValue>`
Examples:
|variableName|variableValue                     |
|firstNameVar|#{generate(Name.firstName)}       |
|lastNameVar |#{generate(Name.lastName)}		|
|emailVar    |#{generate(Internet.emailAddress)}|
|uuidVar     |#{generate(Internet.uuid)}		|


Scenario: Initialize date time in 5 different formats
When I initialize the story variable `<dateVar>` with value `<expressionVar>`
Examples:
|dateVar |expressionVar                             |
|dateVar1|#{generateDate(P)}                        |
|dateVar2|#{generateDate(P, yyyy-MM)}               |
|dateVar3|#{generateDate(P, MM/dd/yyyy)}            |
|dateVar4|#{generateDate(-P3D, yy-MM-dd)}           |
|dateVar5|#{generateDate(P, yyyy-MM-dd'T'HH:mm:ssZ)}|


Scenario: Change the initialized date time format to another
When I initialize the story variable `dateVar6` with value `#{formatDateTo("${dateVar3}","MM/dd/yyyy", yyyy-MM-dd )}`
When I initialize the story variable `dateVar7` with value `#{formatDateTo("${dateVar5}","yyyy-MM-dd'T'HH:mm:ssZ", yyyy-MM )}`
When I initialize the story variable `dateVar8` with value `#{formatDateTo("${dateVar5}","yyyy-MM-dd'T'HH:mm:ssZ", yyyy-MM-dd'T'HH:mm:ssZ, -05:00)}`
