<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="homepage">
  <tiles:putAttribute name="body">
    <div class="row">
      <div class="col-md-3">
        left
      </div>
      <div class="col-md-6">
        center
      </div>
      <div class="col-md-3">
        right
      </div>
    </div>
  </tiles:putAttribute>
</tiles:insertDefinition>