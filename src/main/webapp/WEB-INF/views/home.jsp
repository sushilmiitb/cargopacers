<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertDefinition name="homepage">
	<tiles:putAttribute name="body">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-header text-center">
							To <strong>ZIP</strong> is to move at high speed
						</h2>
						<form class="form-inline col-xs-offset-9" role="form"
							style="margin-bottom: 15px;" action="track" method="GET"
							modelAttribute="trackid">
							<div class="form-group">
								<input type="text" class="form-control control-label"
									id="trackid" name="trackid" placeholder="Tracking ID">
							</div>
							<button type="submit" class="btn btn-info">Track</button>
							<c:if test="${not empty '${errormessage}' }">
								<div>${errormessage}</div>
							</c:if>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="pad" style="margin-top: 6%">
							<div class="panel panel-info">
								<div class="text-center panel-heading">Full Truck Load</div>
								<form class="form-horizontal panel-body text-center" role="form"
									style="">
									<div class="form-group">
										<label for="Source" class="col-sm-4 control-label">Source</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="source"
												placeholder="Source">
										</div>
									</div>
									<div class="form-group">
										<label for="Destination" class="col-sm-4 control-label">Destination</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="destination"
												placeholder="Destination">
										</div>
									</div>
									<div class="form-group">
										<label for="weight" class="col-sm-4 control-label">Weight</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="weight"
												placeholder="Weight(Tonnage)">
										</div>
									</div>
									<div class="form-group">
										<label for="Date" class="col-sm-4 control-label">Pick-Up
											Date</label>
										<div class="col-sm-6">
											<div class="right-inner-addon">
												<i class="glyphicon glyphicon-calendar"> </i> <input
													type="date" class="form-control" id="date"
													placeholder="date">
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
						<div style="margin-top: 5.5%">
							<div class="pad" style="margin-top: 5.5%">
								<div class="panel panel-default col-xs-offset-1">
									<div class="panel-body"
										style="background-color: #DDD; height: 317px;">
										<div class="callbacks_container">
											<ul class="rslides" id="slider1"
												style="border: 2px solid #DDD; background-color: #FFFFFF; height: 285px;">
												<li><img class="img-responsive"
													src="/cargo/static/img/Pic-1.jpg" alt="Slide 2" />
													<p class="caption">pic1</p></li>
												<li><img class="img-responsive"
													src="/cargo/static/img/Pic-2 Tailored-Solutions.jpg"
													alt="Slide 3" />
													<p class="caption">pic2</p></li>
												<li><img class="img-responsive"
													src="/cargo/static/img/Pic-3.jpg" alt="Slide 4" />
													<p class="caption">pic3</p></li>
											</ul>
										</div>
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
								<span class="label label-default">who are we?</span>
							</h2>
						</div>
						<div class="well well-lg">
							<p>We are a group of IIM and IIT graduates building the next
								generation solution for moving goods. Currently, we offer
								full-truck load movement in all sizes across Gujarat, Rajasthan,
								Haryana and Delhi. We use state of the art technologies and are
								learning every day. When we promise something, we deliver it. No
								excuses.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="text-center">
							<h2>
								<span class="label label-default">why choose us?</span>
							</h2>
						</div>
						<div class="well well-lg">
							<ul>
								<li>
									<p>Guaranteed delivery times</p>
								</li>
								<li>
									<p>Book a truck in 60 second</p>
								</li>
								<li>
									<p>Online and offline booking</p>
								</li>
								<li>
									<p>Online real-time tracking</p>
								</li>
								<li>
									<p>Customer loyalty rewards</p>
								</li>
								<li>
									<p>Hassle-free billing</p>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">
						<div class="text-center">
							<h2>
								<span class="label label-default">video</span>
							</h2>
						</div>
						<div class="well well-lg"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
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
					</div>
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>