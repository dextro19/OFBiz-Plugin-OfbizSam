<#-- <div class="screenlet-body">
  <form id="createDemoPersonEvent" method="post" action="<@ofbizUrl>createDemoPersonEvent</@ofbizUrl>">
    <input type="hidden" name="addDemoPersonFromFtl" value="Y"/>
    <fieldset>
      <div>
        <span class="label">Person Role</span>
        <select name="personRoleId" class='required'>
          <#list DemoPersonRole as demoPerson>
            <option value='${demoPerson.personRoleId}'>${demoPerson.description}</option>
          </#list>
        </select>*
      </div>
      <div>
        <span class="label">First Name</span>
        <input type="text" name="firstName" id="firstName" class='required' maxlength="20" />*
      </div>
      <div>
        <span class="label">Last Name</span>
        <input type="text" name="lastName" id="lastName" class='required' maxlength="20" />*
      </div>
      <div>
        <span class="label">Gender</span>
        <input type="text" name="gender" id="gender" class='inputBox' size="60" maxlength="255" />
      </div>
    </fieldset>
    <input type="submit" value="${uiLabelMap.CommonAdd}" />
  </form>
</div> -->


<form method="post" action="<@ofbizUrl>createDemoPersonEvent</@ofbizUrl>" name="createDemoPersonEvent" class="form-horizontal">
  <div class="control-group">
    <label class="control-label" for="personRoleId">Demo Person Role</label>
    <div class="controls">
      <select id="personRoleId" name="personRoleId">
        <#list DemoPersonRole as demoRole>
          <option value='${demoRole.personRoleId}'>${demoRole.description}</option>
        </#list>
      </select>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="firstName">First Name</label>
    <div class="controls">
      <input type="text" id="firstName" name="firstName" required>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="lastName">Last Name</label>
    <div class="controls">
      <input type="text" id="lastName" name="lastName" required>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="gender">Gender</label>
    <div class="controls">
      <input type="text" id="gender" name="gender">
    </div>
  </div>
  <div class="control-group">
    <div class="controls">
      <button type="submit" class="btn">${uiLabelMap.CommonAdd}</button>
    </div>
  </div>
</form>