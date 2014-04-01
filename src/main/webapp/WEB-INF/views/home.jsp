<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertDefinition name="homepage">
	<tiles:putAttribute name="body">
		<div class="container-fluid" style="padding-top: 70px">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<form class="form-inline" role="form"
							style="margin-bottom: 15px; margin-top: 25px;" action="track"
							method="GET" modelAttribute="trackid">
							<div class="form-group">
								<input type="text" class="form-control control-label"
									id="trackid" name="trackid" placeholder="Tracking ID">
							</div>
							<button type="submit" class="btn btn-info">Track</button>
							<c:if test="${not empty '${errormessage}' }">
								<div style="color: #FF0000">${errormessage}</div>
							</c:if>
						</form>
					</div>
					<div class="col-md-6">
						<h2 class="text-center">A hi-tech, reliable and easy way to
							move cargo in trucks</h2>
					</div>
					<div class="col-md-3">
						<h3>
							<span class="glyphicon glyphicon-earphone"
								style="color: #7FBA00;"></span> <span class="text-right">
								<strong>+91-98251-25088 </strong>
							</span>
						</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div style="margin-top: 6%">
							<div class="panel panel-info">
								<div class="text-center panel-heading">Full Truck Load</div>
								<form class="form-horizontal panel-body text-center" role="form"
									style="">
									<div class="form-group">
										<label for="Source" class="col-sm-4 control-label">Source</label>
										<div class="col-sm-6">
											<select class="form-control" id="source">
												<option value="--">--Source--</option>
												<option value="Ahmedabad">Ahmedabad</option>
												<option value="Ajmer">Ajmer</option>
												<option value="Anand">Anand</option>
												<option value="Banswara">Banswara</option>
												<option value="Bharuch">Bharuch</option>
												<option value="Bhilwara">Bhilwara</option>
												<option value="Bundi">Bundi</option>
												<option value="Chittaurgarh">Chittaurgarh</option>
												<option value="Dungarpur">Dungarpur</option>
												<option value="Gandhinagar">Gandhinagar</option>
												<option value="Jaipur">Jaipur</option>
												<option value="Jhalawar">Jhalawar</option>
												<option value="Kandla Port">Kandla Port</option>
												<option value="Kota">Kota</option>
												<option value="Mundra">Mundra Port</option>
												<option value="Nagaur">Nagaur</option>
												<option value="Sikar">Sikar</option>
												<option value="Tong">Tong</option>
												<option value="Udaipur">Updaipur</option>
												<option value="Vadodara">Vadodara</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="Destination" class="col-sm-4 control-label">Destination</label>
										<div class="col-sm-6">
											<select class="form-control" id="destination">
												<option value="--">--Destination--</option>
												<option value="Ahmedabad">Ahmedabad</option>
												<option value="Ajmer" hidden="true">Ajmer</option>
												<option value="Anand">Anand</option>
												<option value="Banswara">Banswara</option>
												<option value="Bharuch">Bharuch</option>
												<option value="Bhilwara">Bhilwara</option>
												<option value="Bundi">Bundi</option>
												<option value="Chittaurgarh">Chittaurgarh</option>
												<option value="Dungarpur">Dungarpur</option>
												<option value="Gandhinagar">Gandhinagar</option>
												<option value="Jaipur">Jaipur</option>
												<option value="Jhalawar">Jhalawar</option>
												<option value="Kandla Port">Kandla Port</option>
												<option value="Kota">Kota</option>
												<option value="Mundra">Mundra Port</option>
												<option value="Nagaur">Nagaur</option>
												<option value="Sikar">Sikar</option>
												<option value="Tong">Tong</option>
												<option value="Udaipur">Updaipur</option>
												<option value="Vadodara">Vadodara</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="weight" class="col-sm-4 control-label">Weight</label>
										<div class="col-sm-6">
											<select class="form-control" id="weight">
												<option value="--">--Weight(Tonnage)--</option>
												<option value="9">9 Ton</option>
												<option value="10">10 Ton</option>
												<option value="15">15 Ton</option>
												<option value="20">20 Ton</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="Date" class="col-sm-4 control-label">Pick-Up
											Date</label>
										<div class="col-sm-6">
											<div class='input-group date' id='datetimepicker1'>
												<input type='text' class="form-control" /> <span
													class="input-group-addon"><span
													class="glyphicon glyphicon-calendar"></span> </span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-info">Search</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div style="margin-top: 6%">
							<div class="panel panel-default">
								<div class="panel-body" style="background-color: #DDD;">
									<div class="callbacks_container">
										<ul class="rslides" id="slider1"
											style="border: 2px solid #DDD; background-color: #FFFFFF;">
											<li><img class="img-responsive"
												src="/cargo/static/img/1. next generation trucking provider_text.jpg"
												alt="Slide 2" /></li>
											<li><img class="img-responsive"
												src="/cargo/static/img/2. execution at fast speed_text.jpg"
												alt="Slide 3" /></li>
											<li><img class="img-responsive"
												src="/cargo/static/img/3. seamless technology_text.jpg"
												alt="Slide 4" /></li>
											<li><img class="img-responsive"
												src="/cargo/static/img/4. No more sleepless nights (cut the extreme 2 men).jpg"
												alt="Slide 4" /></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="text-center">
							<h2>
								<span class="label label-info">Who are we?</span>
							</h2>
						</div>
						<div class="panel panel-info panel-body">
							<ul class="list-unstyled">
								<li><p>
										<img src="/cargo/static/img/accept.png"> <span>We
											are a group of IIM and IIT graduates building the next
											generation solution for transporting cargo. We envision to bring
											the same level of efficiency in cargo transportation that people
											expect for their own movement in flights. We use state of the
											art technologies and are changing the way people think and operate in the trucking industry. When we promise
											something, we deliver it. No excuses.</span>
									</p></li>
								<li><p>
										<img src="/cargo/static/img/accept.png"> <span>We
											would be happy to understand your trucking needs and look
											forward to serving you. Please <a href="http://www.cargobolt.com/cargo/contactus">&ldquo;Contact Us&rdquo; </a> and
											we&apos;ll get back to you.</span>
									</p></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">
						<div class="text-center">
							<h2>
								<span class="label label-info">Why choose us?</span>
							</h2>
						</div>
						<div class="panel panel-info panel-body">
							<ul class="list-unstyled">
								<li><h5>
										<img src="/cargo/static/img/accept.png"> <span>Guaranteed
											delivery times</span>
									</h5></li>
								<li><h5>
										<img src="/cargo/static/img/accept.png"> <span>Book
											a truck in 60 seconds</span>
									</h5></li>
								<li><h5>
										<img src="/cargo/static/img/accept.png"> <span>Competitive pricing</span>
								</h5></li>	
								<li><h5>
										<img src="/cargo/static/img/accept.png"> <span>Online
											and offline booking</span>
									</h5></li>
								<li><h5>
										<img src="/cargo/static/img/accept.png"> <span>Online
											real-time tracking</span>
									</h5></li>
								<li><h5>
										<img src="/cargo/static/img/accept.png"> <span>Customer
											loyalty rewards</span>
									</h5></li>
								<li><h5>
										<img src="/cargo/static/img/accept.png"> <span>Hassle-free
											billing</span>
									</h5></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">
						<div class="text-center">
							<h2>
								<span class="label label-info">Services</span>
							</h2>
						</div>
						<div class="panel panel-info panel-body">
							<p>For a manufacturer or a wholesaler, CargoBolt is a
								one-stop solution for all trucking needs. Currently, we service
								full-truck loads of all sizes in Gujarat, Rajasthan, Haryana and
								Delhi. We offer customized pick-up and delivery services to best
								serve the needs of our various customers.</p>
							<p>Once you are registered with us, you can book trucks both
								online and offline. We provide 100% reliable cargo movement and
								unbeatable execution. <a href="http://www.cargobolt.com/cargo/register">&ldquo;Register&rdquo;</a> here to get
								started.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<!--   <div class="col-md-4">
						<div class="text-center">
							<h2>
								<span class="label label-default">review 1</span>
							</h2>
						</div>
						<div class="well well-lg"></div>
					</div> 
					<div class="col-md-4">
						<div class="text-center">
							<h2>
								<span class="label label-default">review 2</span>
							</h2>
						</div>
						<div class="well well-lg"></div>
					</div> 
					<div class="col-md-4">
						<div class="text-center">
							<h2>
								<span class="label label-default">review 3</span>
							</h2>
						</div>
						<div class="well well-lg"></div>
					</div> -->
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
