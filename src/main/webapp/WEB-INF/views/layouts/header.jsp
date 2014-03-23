<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Cargopacers</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li class="active" id="home"
							onclick="changeStyle('home','aboutus','services','contactus')"><a
							href="home">Home</a></li>
						<li id="aboutus"><a href="aboutus"
							onclick="changeStyle('aboutus','home','contactus','services')">About
								US</a></li>
						<li id="services"><a href="services"
							onclick="changeStyle('services','home','aboutus','contactus')">Services</a></li>
						<li id="contactus"><a href="contactus"
							onclick="changeStyle('contactus','home','aboutus','services')">Contact
								US</a></li>
						<li class=" divider"></li>
						<li id="track1" onmouseout="closeDropdown('track1')"
							onmouseover="activeDropdown('track1')" class="dropdown"><a
							href="#" class="dropdown-toggle" data-hover="dropdown"
							data-toggle="dropdown">Track Order<b class="caret"></b></a>
							<ul class="dropdown-menu"
								style="padding: 15px; padding-bottom: 15px;">
								<form action="[YOUR ACTION]" method="post"
									accept-charset="UTF-8">
									<label class="string optional" for="order_number_Text">Enter
										Order Numbers. To track multiple orders, sperate numbers using
										semi-colon.</label> <input id="user_username"
										style="margin-bottom: 15px;" type="text" name="user[username]"
										size="30" placeholder="Username" /> <input
										class="btn btn-default"
										style="clear: left; width: 100%; height: 32px; font-size: 13px;"
										type="submit" name="commit" value="Sign In" />
								</form>
							</ul></li>
						<li id="login1" onmouseout="closeDropdown('login1')"
							onmouseover="activeDropdown('login1')" class="dropdown"><a
							href="#" class="dropdown-toggle" data-hover="dropdown"
							data-toggle="dropdown">Login<strong class="caret"></strong></a>
							<ul class="dropdown-menu"
								style="padding: 15px; padding-bottom: 15px;">
								<form action="/cargo/j_spring_security_check"
									modelAttribute="login" method="post" accept-charset="UTF-8">
									<input id="j_username" style="margin-bottom: 15px;" type="text"
										name="j_username" size="30" placeholder="Username" /> <input
										id="j_password" style="margin-bottom: 15px;" type="password"
										name="j_password" size="30" placeholder="Password" /> <input
										id="user_remember_me" style="float: left; margin-right: 10px;"
										type="checkbox" name="user[remember_me]" value="1" /> <label
										class="string optional" for="user_remember_me">Remember
										me</label> <input class="btn btn-default"
										style="clear: left; width: 100%; height: 32px; font-size: 13px;"
										type="submit" name="commit" value="Sign In" />
								</form>
							</ul></li>
						<li><a href="#">Register</a></li>
					</ul>
					<script type="text/javascript">
						var divSelected = null;
						var pathname = window.location.pathname;
						if (pathname == "/cargo/aboutus") {
							document.getElementById('aboutus').className = 'active';
							document.getElementById('home').className = '';
							document.getElementById('services').className = '';
							document.getElementById('contactus').className = '';
						} else if (pathname == "/cargo/home") {
							document.getElementById('home').className = 'active';
							document.getElementById('aboutus').className = '';
							document.getElementById('services').className = '';
							document.getElementById('contactus').className = '';
						} else if (pathname == "/cargo/services") {
							document.getElementById('services').className = 'active';
							document.getElementById('aboutus').className = '';
							document.getElementById('home').className = '';
							document.getElementById('contactus').className = '';
						} else if (pathname == "/cargo/contactus") {
							document.getElementById('contactus').className = 'active';
							document.getElementById('aboutus').className = '';
							document.getElementById('services').className = '';
							document.getElementById('home').className = '';
						}
					</script>
				</div>
			</div>
		</div>
	</nav>
</div>