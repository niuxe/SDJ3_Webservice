<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleServicesProxyid" scope="session" class="webServices.ServicesProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleServicesProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleServicesProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleServicesProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        webServices.Services getServices10mtemp = sampleServicesProxyid.getServices();
if(getServices10mtemp == null){
%>
<%=getServices10mtemp %>
<%
}else{
        if(getServices10mtemp!= null){
        String tempreturnp11 = getServices10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String a_1id=  request.getParameter("a16");
        int a_1idTemp  = Integer.parseInt(a_1id);
        String b_2id=  request.getParameter("b18");
        int b_2idTemp  = Integer.parseInt(b_2id);
        java.lang.String func13mtemp = sampleServicesProxyid.func(a_1idTemp,b_2idTemp);
if(func13mtemp == null){
%>
<%=func13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(func13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 20:
        gotMethod = true;
        String vin_3id=  request.getParameter("vin23");
            java.lang.String vin_3idTemp = null;
        if(!vin_3id.equals("")){
         vin_3idTemp  = vin_3id;
        }
        String model_4id=  request.getParameter("model25");
            java.lang.String model_4idTemp = null;
        if(!model_4id.equals("")){
         model_4idTemp  = model_4id;
        }
        String brand_5id=  request.getParameter("brand27");
            java.lang.String brand_5idTemp = null;
        if(!brand_5id.equals("")){
         brand_5idTemp  = brand_5id;
        }
        String weight_6id=  request.getParameter("weight29");
        int weight_6idTemp  = Integer.parseInt(weight_6id);
        sampleServicesProxyid.stationOneRegister(vin_3idTemp,model_4idTemp,brand_5idTemp,weight_6idTemp);
break;
case 31:
        gotMethod = true;
        String partName_7id=  request.getParameter("partName34");
            java.lang.String partName_7idTemp = null;
        if(!partName_7id.equals("")){
         partName_7idTemp  = partName_7id;
        }
        String partType_8id=  request.getParameter("partType36");
            java.lang.String partType_8idTemp = null;
        if(!partType_8id.equals("")){
         partType_8idTemp  = partType_8id;
        }
        String weight_9id=  request.getParameter("weight38");
        double weight_9idTemp  = Double.parseDouble(weight_9id);
        String vin_10id=  request.getParameter("vin40");
            java.lang.String vin_10idTemp = null;
        if(!vin_10id.equals("")){
         vin_10idTemp  = vin_10id;
        }
        String palletID_11id=  request.getParameter("palletID42");
        int palletID_11idTemp  = Integer.parseInt(palletID_11id);
        sampleServicesProxyid.stationTwoRegister(partName_7idTemp,partType_8idTemp,weight_9idTemp,vin_10idTemp,palletID_11idTemp);
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>