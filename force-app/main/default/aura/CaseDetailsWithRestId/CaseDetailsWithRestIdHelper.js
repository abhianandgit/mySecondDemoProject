({
    getRestIdFromCase : function(component) {
        var action = component.get('c.getCaseRestIdBasesOnCaseId');
        alert(component.get('v.recordId'));
        action.setParams
        ({ 
            caseId : component.get('v.recordId')
        });
        action.setCallback(this,function(response) {
            var state = response.getState();
            alert(state);
            alert(response.getReturnValue());
            alert(JSON.stringify(response.getReturnValue()));
            console.log(JSON.stringify(response.getReturnValue()));
            console.log('state>>>'+state);
            if(state === 'SUCCESS') {
                //component.set('v.CaseList', response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },
    getCaseList : function(component) {
        var action = component.get('c.getCaseListBasedOnRestId');        
        alert(component.get('v.recordId'));
        action.setParams
        ({ 
            
            CaseId : component.get('v.recordId')
            //caseId : component.get('v.caseId')
        });
        action.setCallback(this,function(response) {
            var state = response.getState();
            alert(state);
            alert(response.getReturnValue());
            alert(JSON.stringify(response.getReturnValue()));
            console.log(JSON.stringify(response.getReturnValue()));
            console.log('state>>>'+state);
            if(state === 'SUCCESS') {
                component.set('v.CaseList', response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    }
})