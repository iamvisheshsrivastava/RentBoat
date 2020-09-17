<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RentOutBoat.aspx.cs" Inherits="BoatRents.RentOutBoat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%--    <script src="Scripts/WebForms/jquery-1.7.1.min.js"></script>--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>

    <script src="../Scripts/Boat/Boat.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header blue">
                <h3><strong>Rent out a new Boat from inventory</strong></h3>
         </div>
         <div class="modal-body">
             <div class="form-group" style="text-align: left;">
                        <label for="txtHireDate" class="col-sm-5 control-label">Boat Number</label>
                        <div class="col-sm-6">
                            <div class="input-with-icon">
                                <input type="text" id="txtBoatNumber"  placeholder="Enter Boat Number" />
                                <span aria-hidden="true" class="icon icon-calendar btncustom"></span>
                            </div>
                        </div>
              </div>
             <div class="form-group" style="text-align: left;">
                        <label for="txtHireDate" class="col-sm-5 control-label">Customer Name</label>
                        <div class="col-sm-6">
                            <div class="input-with-icon">
                                <input type="text" id="txtCustomerName" placeholder="Enter Customer Name" />
                                <span aria-hidden="true" class="icon icon-calendar btncustom"></span>
                            </div>
                        </div>
             </div>
        </div>
        <div class="modal-footer" style="margin-top:10px;">
                <button type="button" class="btn btn-link btncncl" data-dismiss="modal" onclick="javascript:SearchDetails();">Cancel</button>
                <button type="submit" class="btn btn-primary btnsbmt" onclick="javascript:SearchDetails();">Submit</button>
        </div>
        <div id="errordiv"></div>
    </form>
</body>
</html>
