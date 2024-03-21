package org.apache.ofbiz.ofbizSam;


import java.io.IOException;
import java.util.Map;


import org.apache.ofbiz.base.util.Debug;
import org.apache.ofbiz.entity.Delegator;
import org.apache.ofbiz.entity.GenericEntityException;
import org.apache.ofbiz.entity.GenericValue;
import org.apache.ofbiz.service.DispatchContext;
import org.apache.ofbiz.service.ServiceUtil;


public class OfbizSamServices {
    public static final String module=OfbizSamServices.class.getName();
    public static Map<String,Object> createDemoPerson(DispatchContext dctx, Map<String, ? extends Object> context){
        Map<String,Object> result=ServiceUtil.returnSuccess();
        Delegator delegator=dctx.getDelegator();
        try{
            //under the makeValue bracket the name of the entity is mentioned
            GenericValue DemoPerson=delegator.makeValue("DemoPerson");
            //next sequence of primary key is generated automatically using setNextSeqId which is a method of ??[Doubt]
            DemoPerson.setNextSeqId();
            // Setting up all non primary key field values from context map
            DemoPerson.setNonPKFields(context);
            //Creating a record
            DemoPerson=delegator.create(DemoPerson);
            result.put("personId",DemoPerson.getString("personId"));
           // Debug.log("======Demo Person record created successfully with personId: "+ ofbizDemo.getString("personId"));
        }
        catch (GenericEntityException e){
            Debug.logError(e, module);
            return ServiceUtil.returnError("Error in creating record in Demo Person entity ........" +module);
        }
        return result;
    }
}

