# Integration Engineer Exercise
## Part 1 - API Integration Test
The purpose of this test is to get a sense of your ability to interface with 3rd-party APIs with custom requests, and understand how to accept and utilize the responses, as this is the key, fundamental skill-sets of any Integration Engineer.
What Is The Test?
You’ll need to build an application that can accept a valid IP address and return the following information:
{
  "Country": {
    "ID": string,
    "LocalizedName": string
  },
  "latitude": float,
  "longitude": float,
  "IsDaylightSaving": bool,
"processingCode": string // dash separated string of the country LocalizedName, the AdministrativeArea Loc }
How to Complete This Test
1. Standup as small and simple an application as you can that can query an API and log the response. No need to make anything fancy, host it, or worry about authentication or UI. Just a simple Github repo that can be run locally is fine. Ensure there is some way for the user to be able to view the API response
(append it to a page, log it to the console, etc.)
2. Head over to https://developer.accuweather.com/ and register for a free development account. Create
a test application to get an API key.
3. Read over the Weather Location API documentation to find how to query locations by IP Address.
4. Use the response from the weather API to create a JSON-formatted response that matches the above
schema. The weather API should have one endpoint which allows for an IP address to be passed as a parameter (example endpoint http://localhost:8080/locationByIp?ip=76.25.168.96 ) and return the response body above.
5. Once you have a way for the application to be run locally, the request to be made, and the response to be viewed, commit your changes and share the repo with us with instructions in the Readme.
## Part 2 - Written Responses to Scenarios
The following questions are designed to offer insight into how you think about and solve problems, and how you communicate. We are far less interested in you researching and finding a solution, than to understand you process. It is completely fine if you don’t fully understand some of these problems or have knowledge of our product and industry. There are no wrong answers here, just help us understand what your process would be if you were faced with these challenges in real life.
Please throw your responses into a document and send them over to us along with the repo link from Part 1 above.
1. One of the challenges we face with using real time API’s is that their performance can be unreliable. API’s can be slow, or unresponsive, and when that happens we can lose critical data. In a paragraph or two, propose a solution to the following questions:
1. What are some ways you could reliably know when a specific call needs to be retried to an API? What would be a good method for retrying?
2. If you have a system that sends data regularly to an API, what are some high level ideas for how you think a system respond to a long outage (>1hr)?
2. MetaRouter is a company that allows customers to interface in a simplified way with 3rd-party marketing and analytics tools, like Google Analytics and Facebook Pixel. As a way to improve performance and security, our product seeks to remove these integrations (tags) from the webpage, and actually interfaces with these APIs from the backend (server). However, one critical piece of the puzzle that only exists on the webpage (client-side) are cookies. These cookies often contain critical information that these 3rd-parties rely on, like IDs and information about the user. These cookies are sent along the headers of every request made from a website, so 3rd-parties are able to pick this information out and use it with any calls they receive. If we are tracking behavior information about users (user bought X product, user clicked on X button), but pass that to 3rd-parties from the server instead of the webpage, our calls will not contain cookie data.
1. What are some affects you think this might have on the 3rd-parties?
2. What are some ideas about how we could go about solving this problem? Feel free to think as
outside the box as you want.
3. What are some ways we might be able to still get this information to 3rd-party partners?
