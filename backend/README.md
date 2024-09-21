# Installation Instructions
1) Install NodeJS
2) Make sure you are CD'd in the backend folder
3) Run 'npm i' *you need to do this the first time and anytime someone installs a package (you will get an error reminding you if you forget)* 
4) Create an ".env" file. I recommend duplicating ".env.example" and rename it to ".env". Here is where you configure the app to run on your local machine and where you store sensitive information such as API keys. Configure the database and port to your liking, you may need to populate the API key once we start working with Spotify.
5) Run 'npm run dev'