# Golang simple Todo CRUD application

## Create `.env` file
```
# DB_PASSWORD
DB_PASSWORD="password"
```

## Start the app
    make run

## Run migrations
    Create migration files (up, down) in ./schema dir - `migrate create -ext sql -dir ./schema -seq init`
    Apply migrations - `migrate -path ./schema -database 'postgres://dbuser:dbpassword@dbhost:dbport/dbname?sslmode=dbsslmode' up`
    

## Run Docker Container
    docker-compose up --build

## Swagger url: 
    {domain}/docs/index.html

## Used libraries
    SWAGGER mod         -    `github.com/swaggo/swag`
    SWAGGER mod         -    `github.com/swaggo/files`
    SWAGGER GIN mod     -    `github.com/swaggo/gin-swagger`
    ORM mod             -    `github.com/jmoiron/sqlx`
    DOTENV mod          -    `github.com/joho/godotenv`
    PG DRIVER mod       -    `github.com/lib/pq`
    LOGGER mod          -    `github.com/sirupsen/logrus`
    CONFIG mod          -    `github.com/spf13/viper`
    JWT mod             -    `github.com/dgrijalva/jwt-go`
    
    

    