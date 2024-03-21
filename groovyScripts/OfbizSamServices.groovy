import org.apache.ofbiz.entity.GenericEntityException;

def createDemoPerson(){
    result=[:];
    try{
        demoPerson=delegator.makeValue("DemoPerson");
        demoPerson.setNextSeqId();
        demoPerson.setNonPKFields(context);
        demoPerson=delegator.create(demoPerson);
        result.personId=demoPerson.personId;
        logInfo("==========This is my first Groovy Service implementation in Apache OFBiz. DemoPerson record "
                +"created successfully with personId: "+demoPerson.getString("personId"));
    }
    catch(GenericEntityException e){
        logError(e.getMessage());
        return error("Error in Creating record in OfbizSam Entity");
    }
    return result;
}