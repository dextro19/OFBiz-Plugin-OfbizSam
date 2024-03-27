<#-- <div class="screenlet-body">
  <#if ofbizSamList?has_content>
    <table cellspacing=0 cellpadding=2 border=0 class="basic-table">
      <thead><tr>
        <th>personId</th>
        <th>personRoleId</th>
        <th>firstName</th>
        <th>lastName</th>
        <th>gender</th>
      </tr></thead>
      <tbody>
        <#list ofbizSamList as ofbizSam>
          <tr>
            <td>${ofbizSam.personId}</td>
            <td>${ofbizSam.getRelatedOne("DemoPersonRole").get("description", locale)}</td>
            <td>${ofbizSam.firstName?default("NA")}</td>
            <td>${ofbizSam.lastName?default("NA")}</td>
            <td>${ofbizSam.gender!}</td>
          </tr>
        </#list>
       </tbody>
    </table>
  </#if>
</div> -->

<table class="table table-bordered table-striped table-hover">
    <thead>
        <tr>
          <th>personId</th>
          <th>personRoleId</th>
          <th>firstName</th>
          <th>lastName</th>
          <th>gender</th>
        </tr>
    </thead>
    <tbody>
        <#list ofbizSamList as ofbizSam>
            <tr>
            <td>${ofbizSam.personId}</td>
            <td>${ofbizSam.getRelatedOne("DemoPersonRole").get("description", locale)}</td>
            <td>${ofbizSam.firstName?default("NA")}</td>
            <td>${ofbizSam.lastName?default("NA")}</td>
            <td>${ofbizSam.gender!}</td>
            </tr>
        </#list>
    </tbody>
</table>