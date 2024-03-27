<div class="screenlet-body">
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
</div>