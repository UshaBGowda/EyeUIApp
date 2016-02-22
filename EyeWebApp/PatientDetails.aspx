<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientDetails.aspx.cs" Inherits="EyeWebApp.PatientDetails" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script src="/Content/JQGridReq/grid.locale-en.js" language="javascript" type="text/javascript"></script>
    <script src="/Content/JQGridReq/jquery.jqGrid.js" language="javascript" type="text/javascript"></script>
    <script src="/Scripts/jquery-ui-1.11.4.js" language="javascript" type="text/javascript"></script>
    <script src="/Scripts/PageScripts/PatientDetails.js" language="javascript" type="text/javascript"></script>
    <script src="/Scripts/Chart.min.js" language="javascript" type="text/javascript"></script>

    <style type="text/css">
        .hiddencol {
            display: none;
        }
    </style>
    <div>

        <asp:Label ID="lblNoAccessProvider" runat="server" Text="You are not authorized to access this page" Visible="false"></asp:Label>
    </div>
    <div class="grid" id="dvMaster" style="overflow: auto; margin: 150px 50px 100px auto">
        <div class="grid" id="dvGameAssign" style="height: 470px;">
            <table id="jQTherapy">
            </table>
            <div id="pgrTherapy">
            </div>
        </div>
        <div class="grid" id="dvGameScore">
            <input type="Submit" value="Back" id="btnBack"/>
            <div id="tabs">
                <ul>
                    <li><a href="#tabs-1">Data Chart</a></li>
                    <li><a href="#tabs-2">Data Grid</a></li>
                </ul>
                <div id="tabs-1">
                   <div id="dvGameChart">
                        <canvas id="chrtGameScore" width="400px" height="400px"></canvas>
                    </div>
                    
                </div>
                <div id="tabs-2">
                     <table id="jQGameScore">
                    </table>
                    <div id="pgrGameScore">
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>

