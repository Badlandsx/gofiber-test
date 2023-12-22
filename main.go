package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/Badlandsx/gofiber-test/models"
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/template/html/v2"
)

var (
	// Dummy user and sessions database
	dbUsers       = map[string]models.User{} // user ID, user
	dbSessions    = map[string]string{}      // session ID, user ID
	htmlTemplates *html.Engine
)

func init() {
	// Initialize standard Go html template engine
	htmlTemplates = html.New("./templates", ".tpl")
}

func main() {
	// Fiber configuration and start
	app := fiber.New(fiber.Config{
		Views: htmlTemplates},
	)

	app.Get("/", IndexHandler)
	app.Post("/signup", PostSignUpHandler)
	app.Get("/signup", GetSignUpHandler)

	err := app.Listen(":8080")
	if err != nil {
		fmt.Println(err)
	}
}

func GetSignUpHandler(c *fiber.Ctx) error {
	loggedIn := alreadyLoggedIn(c)
	if loggedIn {
		c.Redirect("/", http.StatusFound)
	}
	return c.Render("signup.html", nil)
}

func PostSignUpHandler(c *fiber.Ctx) error {
	username := c.FormValue("username")
	password := c.FormValue("password")
	firstName := c.FormValue("firstName")
	lastName := c.FormValue("lastName")

	log.Printf("[POST /signup] Signup user with username %s\n", username)

	// Check if user exists in database
	if _, ok := dbUsers[username]; ok {
		log.Printf("[POST /signup] User %s already exists\n", username)
	} else {
		log.Printf("[POST /signup] Save user %s in database\n", username)
		u := models.User{
			Username:  username,
			Password:  password,
			FirstName: firstName,
			LastName:  lastName,
			Role:      "",
		}
		dbUsers[username] = u
	}
	return c.Render("/signup", nil)
}

func IndexHandler(c *fiber.Ctx) error {
	// Get the user if exists
	u := getUser(c)
	if u.FirstName != "" {
		log.Printf("[GET /] User is already logged in %s\n", u.FirstName)
	} else {
		log.Printf("[GET /] No user logged in\n")
	}
	return c.Render("index.html", fiber.Map{"user": u})
}
