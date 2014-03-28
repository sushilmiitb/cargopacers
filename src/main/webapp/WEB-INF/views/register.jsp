<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="aboutus">
	<tiles:putAttribute name="body">
		<div class="container-fluid">
			<div class="row" style="background: #E3E3E3">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="panel panel-default">
						<div class="panel-body col-xs-offset-1">
							<div class="title">Sign In</div>
							<form class="form-horizontal" role="form">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-4 control-label">Email</label>
									<div class="col-sm-5">
										<input type="email" class="form-control" id="inputEmail3"
											placeholder="Email">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-4 control-label">Password</label>
									<div class="col-sm-5">
										<input type="password" class="form-control"
											id="inputPassword3" placeholder="Password">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-4 col-sm-5">
										<div class="checkbox">
											<label> <input type="checkbox"> Remember me
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-4 col-sm-5">
										<button type="submit" class="btn btn-default">Sign in</button>
									</div>
								</div>
							</form>
							<div class="rule"></div>
							<div class="title">Don't Have Account? Register Here</div>
							<form class="form-horizontal" role="form">
								<div class="form-group">
									<label for="inputfirstname" class="col-sm-4 control-label">First
										Name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="inputfirstname"
											placeholder="First Name">
									</div>
								</div>
								<div class="form-group">
									<label for="inputfirstname" class="col-sm-4 control-label">Last
										Name</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="inputlastname"
											placeholder="Last Name">
									</div>
								</div>
								<div class="form-group">
									<label for="inputcompanyname" class="col-sm-4 control-label">Company
										Name</label>
									<div class="col-sm-5">
										<input type="email" class="form-control" id="inputcompanyname"
											placeholder="Campany Name">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-4 control-label">Email</label>
									<div class="col-sm-5">
										<input type="email" class="form-control" id="inputEmail3"
											placeholder="Email">
									</div>
								</div>
								<div class="form-group">
									<label for="inputpassword" class="col-sm-4 control-label">Password</label>
									<div class="col-sm-5">
										<input type="password" class="form-control" id="inputpassword"
											placeholder="Password">
									</div>
								</div>
								<div class="form-group">
									<label for="inputphone" class="col-sm-4 control-label">Phone
										Number</label>
									<div class="col-sm-5">
										<input type="text" class="form-control" id="inputphone"
											placeholder="Phane Number">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-4 col-sm-5">
										<div class="checkbox">
											<label> <input type="checkbox"> Remember me
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-4 col-sm-5">
										<button type="submit" class="btn btn-default">Sign Up</button>
									</div>
								</div>
							</form>
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
			</div>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>