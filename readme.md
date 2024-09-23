# Darely - Truth or Dare for couples, friends, and family alike.

## Installation
 1. Clone repository
 2. Create .env file in backend folder (eg. provides)
 ```s 
    PORT=3000
    DB_HOST=db
    DB_PORT=3306
    DB_NAME=darely_db
    DB_USER=darely_admin
    DB_PWD=my-user-password
```
 3. Run **docker compose up -d --build**
 4. Use the provided init.sql to set up database
 5. Enjoy.

 ## Usage
 1. Select Category From above
 2. Ask for Truth or Dare question
 3. Enjoy.
![An Image of Darely](https://i.imgur.com/NlQw3uQ.png)

 ## Future plans
  1. Develop option to add new questions from web. 
  2. Add Gamification if the player did or did not do the task.
  3. bug fix disguisting ui
  4. Fix responsibility issues.
 ## Stack
  - Frontend: Vite, Vue, Tailwind
  - Backend: Express MySql, Sequelize, Docker
