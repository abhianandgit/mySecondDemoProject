({
    // 1. This is called on loding of component.
    leadwithcheckbox : function(component, event, helper) {
        //2. Calling method "getLeadWithCheckbox" of apex class "LeadConversionAuraController".
        var action =component.get("c.getLeadWithCheckbox");
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                //3.Setting return value of method "getLeadWithCheckbox" of apex class "LeadConversionAuraController" to attribute "leadWrapper".
                component.set("v.leadWrapper", response.getReturnValue());
            }
        });
        //4. $A.enqueueAction adds the server-side action to the queue.
        $A.enqueueAction(action);
    },
    // 5. This is called by Conver Lead button.
    convertLead : function(component, event, helper){
        // 6. Getting wrapper list.
        var leadWrapper = component.get("v.leadWrapper");
        //7. Calling method "convertSelectedLead" of apex class "LeadConversionAuraController".
        var action = component.get("c.convertSelectedLead");
        // 8. Array decleration.
        var selectedLead = new Array();
        for(var i=0; i < leadWrapper.length; i++){
            if(leadWrapper[i].isBoolean){
                // 9. Hold selected lead to convert.
                selectedLead.push(leadWrapper[i].leadObj);
            }
        }
        action.setParams({
            "selectedLead":selectedLead
        })
        if(selectedLead.length > 0){
            action.setCallback(this, function(response){
                // 10. Checking status of response.
                var state = response.getState();
                if (state === "SUCCESS") {
                    alert('Lead isconverted sucessfully.');
                    location.reload();
                }
                else{
                    alert('Error occurred while converting lead.');
                }
            });
        }else{
            alert('Please select any Lead');
        }
        $A.enqueueAction(action);
    }
    
})