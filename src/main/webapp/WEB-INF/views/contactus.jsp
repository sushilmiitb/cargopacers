<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertDefinition name="homepage">
	<tiles:putAttribute name="body">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="col-xs-offset-4">
							<address>
								<strong>CARGOBOLT PVT. LTD.</strong><br> Floor 1, CIIE,<br>
								IIM Ahmedabad, <br> Ahmedabad,<br> Gujarat<br> <abbr
									title="Phone">P:</abbr> +91-9825125088<br> <abbr
									title="email">E:</abbr> <a href="mailto:#">contact@cargobolt.com</a>
							</address>
						</div>

						<div class="panel panel-default">
							<div class="panel-body">
								<div id="map-canvas" style="height: 300px"></div>
							</div>
						</div>

					</div>
					<div class="col-md-6">
						<div class="panel panel-default">
							<div class="panel panel-heading text-center">Write to Us</div>
							<form class="form-horizontal panel-body text-center" role="form"
								style="">
								<div class="form-group">
									<label for="firstname" class="col-sm-4 control-label">First
										Name</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="firstname"
											placeholder="First Name">
									</div>
								</div>
								<div class="form-group">
									<label for="lastname" class="col-sm-4 control-label">Last
										Name</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="lastname"
											placeholder="Last Name">
									</div>
								</div>
								<div class="form-group">
									<label for="help" class="col-sm-4 control-label">How
										Can we Help?</label>
									<div class="col-sm-4">
										<div class="radio">
											<label> <input type="radio" name="optionsRadios"
												id="shipper" value="shipper" checked> I&apos;m a
												Shipper
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="optionsRadios"
												id="trucker" value="trucker"> I&apos;m a Trucker
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="optionsRadios"
												id="jobseeker" value="jobseeker"> I&apos;m a Job
												Seeker
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="optionsRadios"
												id="others" value="others"> Others
											</label>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="companyname" class="col-sm-4 control-label">Company
										Name</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="companyname"
											placeholder="Company Name">
									</div>
								</div>

								<div class="form-group">
									<label for="phonenumber" class="col-sm-4 control-label">Phone
										Number</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="phonenumber"
											placeholder="Phone Number">
									</div>
								</div>



								<div class="form-group">
									<label for="email" class="col-sm-4 control-label">E-mail</label>
									<div class="col-sm-6">
										<input type="email" class="form-control" id="email"
											placeholder="E-Mail">
									</div>
								</div>

								<div class="form-group">
									<label for="Destination" class="col-sm-4 control-label">Message</label>
									<div class="col-sm-6">
										<textarea class="form-control" rows="3" style="resize: none"
											id="message"></textarea>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn btn-info">Submit</button>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
