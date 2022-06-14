package main

import (
	"log"
	"os"

	"github.com/joho/godotenv"
	"gitlab.com/pranotobudi/go-feature-flag-demo/database"
)

func main() {
	if os.Getenv("APP_ENV") != "production" {
		// executed in development only,
		//for production set those on production environment settings

		// load local env variables to os
		err := godotenv.Load(".env")
		if err != nil {
			log.Println("failed to load .env file")
		}
	}

	postgres := database.GetDB()
	postgres.MigrateDB("./database/init.sql")

}
