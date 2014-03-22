<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="registerpage">
  <tiles:putAttribute name="body">
    <div class="row" style="background:#E3E3E3">
  <div id="MAIN">
    <div class="signUpContainer">
      <div class="pad">
        <div class="title"> Sign In</div>
        <dl>
          <dt> </dt>
          <dd class="regIndent">
            <div class="gridA">
              <div class="balance">
                <form class="form-horizontal" role="form">
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-4 control-label">Email</label>
                    <div class="col-sm-8">
                      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-4 control-label">Password</label>
                    <div class="col-sm-8">
                      <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-8">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox">
                          Remember me </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-8">
                      <button type="submit" class="btn btn-default">Sign in</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </dd>
        </dl>
        <div class="rule"></div>
        <div class="title"> Don't Have Account? Register Here</div>
        <dl>
          <dt> </dt>
          <dd class="regIndent">
            <div class="gridA">
              <div class="balance">
                <form class="form-horizontal" role="form">
                  <div class="form-group">
                    <label for="inputfirstname" class="col-sm-4 control-label">First Name</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="inputfirstname" placeholder="First Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputfirstname" class="col-sm-4 control-label">Last Name</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="inputlastname" placeholder="Last Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputcompanyname" class="col-sm-4 control-label">Company Name</label>
                    <div class="col-sm-8">
                      <input type="email" class="form-control" id="inputcompanyname" placeholder="Campany Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-4 control-label">Email</label>
                    <div class="col-sm-8">
                      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputpassword" class="col-sm-4 control-label">Password</label>
                    <div class="col-sm-8">
                      <input type="password" class="form-control" id="inputpassword" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputphone" class="col-sm-4 control-label">Phone Number</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="inputphone" placeholder="Phane Number">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-8">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox">
                          Remember me </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-8">
                      <button type="submit" class="btn btn-default">Sign in</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </dd>
        </dl>
      </div>
    </div>
  </div>
</div>
  </tiles:putAttribute>
</tiles:insertDefinition>