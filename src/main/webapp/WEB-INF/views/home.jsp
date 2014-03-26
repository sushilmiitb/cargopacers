<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertDefinition name="homepage">
	<tiles:putAttribute name="body">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<div class="pad" style="margin-top: 10%">
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
					<form class="form-inline col-xs-offset-6" role="form"
						style="margin-bottom: 15px;" action="track" method="GET" modelAttribute="trackid">
						<div class="form-group">
							<input type="text" class="form-control control-label"
								id="trackid" name="trackid" placeholder="Tracking ID">
						</div>
						<button type="submit" class="btn btn-info">Track</button>
						<c:if test="${not empty '${errormessage}' }">
						<div>${errormessage}</div>
						</c:if>
					</form>
					<div style="margin-top: 5.5%">
						<div class="pad" style="margin-top: 5.5%">
							<div class="panel panel-default col-xs-offset-3">
								<div class="panel-body" style="background-color: #DDD;">
									<ul class="rslides" id="slider1"
										style="border: 2px solid #DDD; background-color: #FFFFFF;">
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
			<div class="row">
				<div class="col-md-4 about">who are we?</div>
				<div class="col-md-4 about">why choose us?</div>
				<div class="col-md-4 about">video</div>
			</div>
			<div class="row">
				<div class="col-md-4 about">review 1</div>
				<div class="col-md-4 about">review 2</div>
				<div class="col-md-4 about">review 3</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>