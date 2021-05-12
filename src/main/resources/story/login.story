Description: Check the login functionality with valid/invalid credentials


Scenario: Verify user can login with valid credentials
Given I am on a page with the URL '${loginPageUrl}'
When I click on element located `By.xpath(//*[@href="/login"])`
When I add `${correctLoginVar}` to field located `By.xpath(//*[@type="text" and @name="login"])`
When I add `${correctPasswordVar}` to field located `By.xpath(//*[@type="password"])`
When I click on element located `By.xpath(//*[@type="submit"])`
Then the page with the URL containing 'https://github.com/' is loaded
When I click on element located `By.xpath(//*[@aria-label="View profile and more"])`
When I click on element located `By.xpath(//*[@class="dropdown-item dropdown-signout"])`


Scenario: Verify user can't login with invalid credentials
Given I am on a page with the URL '${loginPageUrl}'
When I click on element located `By.xpath(//*[@href="/login"])`
When I add `<LoginVar>` to field located `By.xpath(//*[@type="text" and @name="login"])`
When I add `<PasswordVar>` to field located `By.xpath(//*[@type="password"])`
When I click on element located `By.xpath(//*[@type="submit"])`
Then field located `By.xpath(//*[@class="container-lg px-2"])` exists
Examples:
|LoginVar             |PasswordVar          |
|#{${wrongCredential}}|#{${wrongCredential}}|
|#{${wrongCredential}}|                     |
|                     |#{${wrongCredential}}|
|                     |                     |
