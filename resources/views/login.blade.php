<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>

		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

		<title>Rauxa</title>

		<link rel="stylesheet" href="/assets/css/bootstrap.min.css" type="text/css" media="all" />
		<link rel="stylesheet" href="/assets/css/font-awesome.min.css" type="text/css" media="all" />
		<link rel="stylesheet" href="/assets/css/app.css" type="text/css" media="all" />

        <script type='text/javascript' src="/assets/js/app.js"></script>
		<script type='text/javascript' src="/assets/js/formdata.js"></script>
		<script type='text/javascript' src="/assets/js/master.js"></script>

    </head>
    <body>
        <div class="container-fluid">
            <nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand" href="#">
			        <img alt="Rauxa" src="/assets/img/logo.png">
			      </a>
			    </div>

			  </div>
			</nav>

			@yield('main-body')

		</div>



    </body>
</html>
