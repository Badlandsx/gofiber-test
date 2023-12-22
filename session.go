package main

import (
	"github.com/Badlandsx/gofiber-test/models"
	"github.com/gofiber/fiber/v2"
)

func getUser(c *fiber.Ctx) models.User {
	var u models.User

	// Get value of sessions cookie if exists
	cookie := c.Cookies("session")
	if cookie == "" {
		return u
	}

	// Check if user exists in session database
	if un, ok := dbSessions[cookie]; ok {
		u = dbUsers[un]
	}
	return u
}

func alreadyLoggedIn(c *fiber.Ctx) bool {
	cookie := c.Cookies("session")
	if cookie == "" {
		return false
	}
	un := dbSessions[cookie]
	_, ok := dbUsers[un]
	return ok
}
