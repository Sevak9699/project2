Description: Check the google search functionality


Scenario: Verify google search functionality works, and randomly select one of the results from 1st to 5th pages
Given I am on the main application page
When I click on element located `By.xpath(//a[contains(text(),'English')])`
When I add `rest` to field located `By.xpath(//*[@class='gLFyf gsfi'])`
When I click on element located `By.xpath(//div[@class="FPdoLc lJ9FBc"]//input[1])`
When I click on element located `By.xpath(//*[@aria-label="Page #{${generatePageNumbers}}"])`
When I initialize the scenario variable `randomNumberVar` with value `#{${generateResultNumbers}}`
When I save `href` attribute value of element located `By.xpath(//*[@class='g'][${randomNumberVar}]//a[contains(@href,'http')])` to scenario variable `pageUrl`
When I click on element located `By.xpath(//*[@class="g"][${randomNumberVar}])`
Then the page with the URL containing '${pageUrl}' is loaded
