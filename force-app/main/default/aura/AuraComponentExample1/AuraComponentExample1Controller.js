({
	doCalculation : function(component, event, helper) {
        var p=component.get("v.principal");
        console.log(">>>>"+p);
        var r=component.get("v.rate");
        var t=component.get("v.years");
        var i=(p*r*t)/100;
        console.log("interested=="+i);
       	component.set("v.interest",i);
	}
})