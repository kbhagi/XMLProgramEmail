<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="XMLProgramEmail._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <b>To:</b> <span id="to"></span><br />
    <b>From:</b> <span id="from"></span><br />
    <b>Message:</b> <span id="message"></span>
    </div>
    <script type="text/javascript">
    txt="<note>";
    txt=txt+"<to>Anika</to>";
    txt=txt+"<from>Class Teacher</from>";
    txt=txt+"<heading>Reminder</heading>";
    txt=txt+"<body>Report of Weekend</body>";
    txt=txt+"</note>";
    if(window.DOMParser)
    {
    parser = new DOMParser();
    xmlDoc=parser.parseFromString(txt,"text/xml");
    }
    else{
    xmlDoc=new ActiveXObject("Microsoft.XMLDOM");
    xmlDoc.async=flase;
    xmlDoc.loadXML(txt);
    }
    document.getElementById("to").innerHTML=xmlDoc.getElementsByTagName("to")[0].childNodes[0].nodeValue;
    document.getElementById("from").innerHTML=xmlDoc.getElementsByTagName("from")[0].childNodes[0].nodeValue;
    document.getElementById("message").innerHTML=xmlDoc.getElementsByTagName("body")[0].childNodes[0].nodeValue;
    </script>
    </form>
</body>
</html>
