# Getting Started
1) Make sure you have NodeJS installed
2) Make sure you are CD'd in the frontend folder
3) run 'npm i' *you need to do this the first time and anytime someone installs a package (you will get an error reminding you if you forget)* 
4) run 'npm run dev'
If you forget any of this, you can look here again or look at 'package.json' as it contains the pre-made scripts to reuse.

# Hosting / Deployment
Every time you update the site, you should watch build to make sure it updates.
This way we don't keep updating the site and have a backlog of a ton of errors.

https://spotify-heatmap.vercel.app/ <-- If your update worked, then you should see the changes here in ~2-3 minutes

Whenever you push to GitHub, Vercel will automatically start building the new version and the live version will be swapped out when its ready (if successful)