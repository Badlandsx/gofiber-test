<head>
    <meta charset="UTF-8">
    <title>Net http golang with templates</title>
    <link href="https://cdn.jsdelivr.net" rel="preconnect" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/boosted@5.3.2/dist/css/boosted.min.css" rel="stylesheet" integrity="sha384-fyenpx19UpfUhZ+SD9o9IdxeIJKE6upKx0B54OcXy1TqnO660Qw9xw6rOASP+eir" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/boosted@5.3.2/dist/js/boosted.bundle.min.js" integrity="sha384-+lAXqnipqQpjxMdd/9Hp2GOzB4aIouKEYRZ7AE66h68BDob7UlMLpZY7w7SqrC+M" crossorigin="anonymous"></script>
    <style>
      #content {
        text-align: center;
      }
    </style>
</head>

<header>
  <nav class="navbar navbar-dark bg-dark navbar-expand-lg header-minimized" aria-label="Global navigation - Minimized without title example">
    <div class="container-xxl">
      <div id="global-header-0.1" class="navbar-collapse collapse me-lg-auto global-header-0">
        <ul class="navbar-nav">
          <li class="nav-item"><a class="nav-link" href="/" aria-current="page">Home</a></li>
          <li class="nav-item"><a class="nav-link active" href="/signup">SignUp</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<main class="bd-content order-1">
  <div class="bg-body title-bar">
    <div class="container-xxl d-block">
      <div class="row">
        <div class="col-sm-12 col-lg-5 offset-lg-3">
          <h1 class="display-1">Sign Up</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="container-xxl pt-4">
    <div class="row">
      <div class="col-sm-12 col-lg-5 offset-lg-3">
        <form class="needs-validation mb-5" novalidate method="post">
          <div class="row">
            <div class="col-12">
              <p class="fw-bold mb-4">
                <span class="text-primary me-1">*</span>indicates required
              </p>
            </div>
            <div class="col-sm-4 col-md-6 mb-3">
              <label for="selectTitle" id="selectTitleLabel" class="form-label is-required">Title<span class="visually-hidden"> (required)</span></label>
              <select class="form-select" id="selectTitle" aria-labelledby="selectTitleLabel selectTitleFeedback" autocomplete="sex" required>
                <option selected disabled value="" aria-hidden="true">Select a title</option>
                <option value="1">Miss</option>
                <option value="2">Mr.</option>
                <option value="3">Mrs.</option>
                <option value="3">Ms.</option>
                <option value="4">Prefer not to say</option>
              </select>
              <div class="valid-feedback">
                Looks good!
              </div>
              <div id="selectTitleFeedback" class="invalid-feedback">
                Please select a valid title.
              </div>
            </div>
            <div class="col-12">
              <div class="mb-3">
                <label for="firstName" id="firstNameLabel" class="form-label is-required">First name<span class="visually-hidden"> (required)</span></label>
                <input type="text" name="firstName" class="form-control" id="firstName" aria-labelledby="firstNameLabel firstNameFeedback" autocomplete="given-name" required>
                <div class="valid-feedback">
                  Looks good!
                </div>
                <div id="firstNameFeedback" class="invalid-feedback">
                  Please enter a valid first name.
                </div>
              </div>
              <div class="mb-3">
                <label for="lastName" id="lastNameLabel" class="form-label is-required">Last name<span class="visually-hidden"> (required)</span></label>
                <input type="text" name="lastName" class="form-control" id="lastName" aria-labelledby="lastNameLabel lastNameFeedback" autocomplete="family-name" required>
                <div class="valid-feedback">
                  Looks good!
                </div>
                <div id="lastNameFeedback" class="invalid-feedback">
                  Please enter a valid last name.
                </div>
              </div>
              <div class="mb-3">
                <label for="username" id="usernameLabel" class="form-label is-required">Username<span class="visually-hidden"> (required)</span></label>
                <input type="username" name="username" class="form-control" id="username" aria-labelledby="usernameLabel usernameFeedback" autocomplete="username" required>
                <div class="valid-feedback">
                  Looks good!
                </div>
                <div id="usernameFeedback" class="invalid-feedback">
                  Please provide a valid username.
                </div>
              </div>
              <div class="mb-3">
                <label for="password" id="passwordLabel" class="form-label is-required">Password<span class="visually-hidden"> (required)</span></label>
                <input type="password" name="password" class="form-control" id="password" aria-labelledby="passwordLabel passwordFeedback" autocomplete="password" required>
                <div class="valid-feedback">
                  Looks good!
                </div>
                <div id="passwordFeedback" class="invalid-feedback">
                  Please provide a valid password.
                </div>
              </div>
              <div class="mb-3">
                <label for="country" id="countryLabel" class="form-label is-required">Country<span class="visually-hidden"> (required)</span></label>
                <select class="form-select" id="country" aria-labelledby="countryLabel countryFeedback" autocomplete="country-name" required>
                  <option selected disabled value="" aria-hidden="true">Select a country</option>
                  <option value="1">Australia</option>
                  <option value="2">Canada</option>
                  <option value="3">France</option>
                  <option value="4">USA</option>
                </select>
                <div class="valid-feedback">
                  Looks good!
                </div>
                <div id="countryFeedback" class="invalid-feedback">
                  Please select a valid country.
                </div>
              </div>
              <button type="submit" class="btn btn-primary mt-2">Submit</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</main>
<footer class="footer bg-dark navbar-dark">
  <h2 class="visually-hidden">Sitemap and information</h2>
  <div class="container-xxl footer-terms">
    <ul class="navbar-nav gap-md-3">
      <li class="fw-bold">Badlands Organization</li>
      <li><a class="nav-link" href="#">Link</a></li>
      <li class="fw-bold">v0.1</li>
    </ul>
  </div>
</footer>