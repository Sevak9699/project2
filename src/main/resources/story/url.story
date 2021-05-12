Description: Check the web pages can open


Scenario: Verify user can navigate specified URL
When I initialize the scenario variable `variable2` with value `<variable3>`
Given I am on a page with the URL '${variable2}'
Then the page with the URL containing '${variable2}' is loaded
Examples:
|variable3                           |
|https://www.youtube.com/feed/library|
|https://github.com/                 |
|https://www.linkedin.com/           |
