<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewBoatToInventory.aspx.cs" Inherits="BoatRents.AddNewBoatToInventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="Scripts/WebForms/jquery-1.7.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>

    <script src="../Scripts/Boat/Boat.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header blue">
                <h3><strong>Add a new Boat to the inventory</strong></h3>
         </div>
         <div class="modal-body">
             <div class="form-group" style="text-align: left;">
                        <label for="txtHireDate" class="col-sm-5 control-label">Boat Name</label>
                        <div class="col-sm-6">
                            <div class="input-with-icon">
                                <input type="text" id="txtBoatName"  placeholder="Enter Boat Name" />
                                <span aria-hidden="true" class="icon icon-calendar btncustom"></span>
                            </div>
                        </div>
              </div>
             <div class="form-group" style="text-align: left;">
                        <label for="txtHireDate" class="col-sm-5 control-label">Hourly Rate</label>
                        <div class="col-sm-6">
                            <div class="input-with-icon">
                                <input type="text" id="txtHourlyRate" placeholder="Enter Hourly Rate" />
                                <span aria-hidden="true" class="icon icon-calendar btncustom"></span>
                            </div>
                        </div>
             </div>
        </div>
        <div class="modal-footer" style="margin-top:10px;">
                <button type="button" class="btn btn-link btncncl" data-dismiss="modal" onclick="javascript:SubmitDetails();">Cancel</button>
                <button type="submit" class="btn btn-primary btnsbmt" onclick="javascript:SubmitDetails();">Submit</button>
        </div>
        <div id="errordiv"></div>
    </form>
</body>
</html>
