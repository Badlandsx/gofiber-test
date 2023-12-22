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
          <li class="nav-item"><a class="nav-link active" href="/" aria-current="page">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="/signup">SignUp</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<div id="content">
  <h1>Welcome to Go Fiber test App</h1>
  <hr/>

  {{ if .user.FirstName }}
  <h2>User details:</h2>
  <ul>
    <li>First Name: {{ .user.FirstName}}</li>
    <li>Last Name: {{ .user.LastName}}</li>
    <li>Login: {{ .user.Login}}</li>
    <li>Roles: {{ .user.Roles}}</li>
  </ul>
  {{ else }}
  <div>
    <h2>You should signup here <a href="/signup">Sign Up</a></h2>
  </div>
  {{ end }}
<div>

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