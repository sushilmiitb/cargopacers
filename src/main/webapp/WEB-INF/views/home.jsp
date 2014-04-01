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
								<div style="color:#FF0000">${errormessage}</div>
							</c:if>
						</form>
					</div>
					<div class="col-md-6">
						<h2 class="text-center">A hi-tech, reliable and easy way to
							move cargo in trucks.</h2>
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
												<option value="9">9 Ton</option>
												<option value="10">10 Ton</option>
												<option value="15">15 Ton</option>
												<option value="20">20 Ton</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="Destination" class="col-sm-4 control-label">Destination</label>
										<div class="col-sm-6">
											<select class="form-control" id="destination">
												<option value="--">--Destination--</option>
												<option value="9">9 Ton</option>
												<option value="10">10 Ton</option>
												<option value="15">15 Ton</option>
												<option value="20">20 Ton</option>
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
												src="/cargo/static/img/1. Next generation trucking provider.jpg"
												alt="Slide 2" />
												<p class="caption">Next generation trucking provider</p></li>
											<li><img class="img-responsive"
												src="/cargo/static/img/2. Execution at fast speed.jpg"
												alt="Slide 3" />
												<p class="caption">Execution at fast speed</p></li>
											<li><img class="img-responsive"
												src="/cargo/static/img/3. Seamless Technology.jpg"
												alt="Slide 4" />
												<p class="caption">Seamless Technology</p></li>
											<li><img class="img-responsive"
												src="/cargo/static/img/4. No more sleepless nights (cut the extreme 2 men).jpg"
												alt="Slide 4" />
												<p class="caption">No more sleepless nights</p></li>
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
								<span class="label label-info">who are we?</span>
							</h2>
						</div>
						<div class="panel panel-info panel-body">
							<ul class="list-unstyled">
								<li><p>
										<img src="/cargo/static/img/accept.png"> <span>We
											are a group of IIM and IIT graduates building the next
											generation solution for moving goods. We envision to bring
											the same level of efficiency in cargo movement that people
											expect for their own movement in flights. We use state of the
											art technologies and are learning every day. When we promise
											something, we deliver it. No excuses.</span>
									</p></li>
								<li><p>
										<img src="/cargo/static/img/accept.png"> <span>We
											would be happy to understand your trucking needs and look
											forward to serving you. Please &ldquo;Contact Us&rdquo; and
											we&apos;ll get back to you.</span>
									</p></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">
						<div class="text-center">
							<h2>
								<span class="label label-info">why choose us?</span>
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
								unbeatable execution. &ldquo;Register&rdquo; here to get
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
