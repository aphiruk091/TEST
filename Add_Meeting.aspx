<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.Master" AutoEventWireup="true" CodeBehind="Add_Meeting.aspx.cs" Inherits="LCD_RA_Website_Dev.Add_Meeting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">

     <script type="text/javascript">

         function onTxtKeyUp() {
             $('#TextBox2').keyup(function (e) {
                 var val = $(this).val();
                 val = val.replace(/[^0-9]/g, '');
                 if (val.length >= 2)
                     val = val.substring(0, 2) + ':' + val.substring(2);
                 $(this).val(val);
             });
         }
         function onTxtKeyUpDate() {
             $('#TextBox1').keyup(function (e) {
                 var val = $(this).val();
                 val = val.replace(/[^0-9]/g, '');
                 if (val.length >= 2)
                     val = val.substring(0, 2) + '-' + val.substring(2);
                 if (val.length >= 5)
                     val = val.substring(0, 5) + '-' + val.substring(5);
                 if (val.length > 10)
                     val = val.substring(0, 10);
                 $(this).val(val);
             });
         }
         function isNumber(evt) {
             evt = (evt) ? evt : window.event;
             var charCode = (evt.which) ? evt.which : evt.keyCode;
             if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                 return false;
             }
             return true;
         }
        
         

    </script>

    <div class="container">
        <h2 style="text-align:center;"><strong> SCHEDULE MANAGEMENT</strong></h2>
    </div>
    <div class="container">    
        <div class="col-sm-12">
            <div class="well">
                <div class="responsive">
                

                     <!-- modal add -->
            <div class="modal fade"  role="dialog"  id="add" >
                <div class="modal-dialog ">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">INSERT NEW SCHEDULE</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group row">
                                <label class="col-sm-4 control-label" style="text-align: right; margin-top: 7px;">MEETING DATE : </label>
                                <div class="col-sm-8">
                                    
                                    
                                         
                                    <asp:TextBox ID="tb_date1" class="form-control input-sm"  onkeypress="return isNumber(event)" style="text-transform:uppercase; width: 300px;" runat="server"></asp:TextBox> 
                                    
                                           
                                    <script type="text/javascript">

                                        var picker = new Pikaday(
                                        {
                                            field: document.getElementById('tb_date1'),
                                            firstDay: 1,
                                            minDate: new Date('2000-01-01'),
                                            maxDate: new Date('2020-12-31'),
                                            yearRange: [2000, 2020],
                                            numberOfMonths: 1,
                                            
                                        });

                                    </script>

 
                                        
                                    <%--<asp:TextBox ID="tb_dateFrom" runat="server" class="form-control input-sm" OnTextChanged="Cal1_SelectionChanged" Style="width: 200px;"></asp:TextBox>--%>
                                </div>
                                <div class="col-xs-1">
                                   
                                   <%-- <asp:ImageButton ID="ImgDateFrom" runat="server" ImageUrl="~/image/Calenda.png" Height="15px" Width="17px" OnClick="ImgDateFrom_Click" />
                                    <asp:Calendar ID="Cal1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Cal1_SelectionChanged" Width="220px" Visible="False" BorderWidth="1px" ShowGridLines="True">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>--%>

                    </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 control-label" style="text-align: right; margin-top: 7px; ">START TIME : </label>
                                <div class="col-sm-2">
                                    <asp:DropDownList ID="st_t1" class=" form-control input-sm" Style="width: 100px;"
                                        runat="server">

                                        <asp:ListItem Value="08"> 08 </asp:ListItem>
                                        <asp:ListItem Value="09"> 09 </asp:ListItem>
                                        <asp:ListItem Value="10"> 10 </asp:ListItem>
                                        <asp:ListItem Value="11"> 11 </asp:ListItem>
                                        <asp:ListItem Value="12"> 12 </asp:ListItem>
                                        <asp:ListItem Value="13"> 13 </asp:ListItem>
                                        <asp:ListItem Value="14"> 14 </asp:ListItem>
                                        <asp:ListItem Value="15"> 15 </asp:ListItem>
                                        <asp:ListItem Value="16"> 16 </asp:ListItem>
                                        <asp:ListItem Value="17"> 17 </asp:ListItem>
                                        <asp:ListItem Value="18"> 18 </asp:ListItem>
                                        <asp:ListItem Value="19"> 19 </asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                                <div class="col-sm-6">
                                    <asp:DropDownList ID="st_t2" class=" form-control input-sm" Style="width: 100px;"
                                        runat="server">

                                        <asp:ListItem Value="00"> 00 </asp:ListItem>
                                        <asp:ListItem Value="05"> 05 </asp:ListItem>
                                        <asp:ListItem Value="10"> 10 </asp:ListItem>
                                        <asp:ListItem Value="15"> 15 </asp:ListItem>
                                        <asp:ListItem Value="20"> 20 </asp:ListItem>
                                        <asp:ListItem Value="25"> 25 </asp:ListItem>
                                        <asp:ListItem Value="30"> 30 </asp:ListItem>
                                        <asp:ListItem Value="35"> 35 </asp:ListItem>
                                        <asp:ListItem Value="40"> 40 </asp:ListItem>
                                        <asp:ListItem Value="45"> 45 </asp:ListItem>
                                        <asp:ListItem Value="50"> 50 </asp:ListItem>
                                        <asp:ListItem Value="55"> 55 </asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 control-label" style="text-align: right; margin-top: 7px;">FINISH TIME : </label>
                                <div class="col-sm-2">
                                    <asp:DropDownList ID="fi_n1" class=" form-control input-sm" Style="width: 100px;"
                                        runat="server">
                                        
                                        <asp:ListItem Value="08"> 08 </asp:ListItem>
                                        <asp:ListItem Value="09"> 09 </asp:ListItem>
                                        <asp:ListItem Value="10"> 10 </asp:ListItem>
                                        <asp:ListItem Value="11"> 11 </asp:ListItem>
                                        <asp:ListItem Value="12"> 12 </asp:ListItem>
                                        <asp:ListItem Value="13"> 13 </asp:ListItem>
                                        <asp:ListItem Value="14"> 14 </asp:ListItem>
                                        <asp:ListItem Value="15"> 15 </asp:ListItem>
                                        <asp:ListItem Value="16"> 16 </asp:ListItem>
                                        <asp:ListItem Value="17"> 17 </asp:ListItem>
                                        <asp:ListItem Value="18"> 18 </asp:ListItem>
                                        <asp:ListItem Value="19"> 19 </asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                                <div class="col-sm-6">
                                    <asp:DropDownList ID="fi_n2" class=" form-control input-sm" Style="width: 100px;"
                                        runat="server">

                                        <asp:ListItem Value="00"> 00 </asp:ListItem>
                                        <asp:ListItem Value="05"> 05 </asp:ListItem>
                                        <asp:ListItem Value="10"> 10 </asp:ListItem>
                                        <asp:ListItem Value="15"> 15 </asp:ListItem>
                                        <asp:ListItem Value="20"> 20 </asp:ListItem>
                                        <asp:ListItem Value="25"> 25 </asp:ListItem>
                                        <asp:ListItem Value="30"> 30 </asp:ListItem>
                                        <asp:ListItem Value="35"> 35 </asp:ListItem>
                                        <asp:ListItem Value="40"> 40 </asp:ListItem>
                                        <asp:ListItem Value="45"> 45 </asp:ListItem>
                                        <asp:ListItem Value="50"> 50 </asp:ListItem>
                                        <asp:ListItem Value="55"> 55 </asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 control-label" style="text-align: right; margin-top: 7px;">TOPIC : </label>
                                <div class="col-sm-8">
                                    <asp:TextBox class="form-control input-sm" ID="tb_topic" rows="3" style="width: 300px;" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <%--<textarea  rows="3" id="topic" style="width: 300px;" ></textarea>--%>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 control-label" style="text-align: right; margin-top: 7px;">ROOM : </label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="tb_room" runat="server" class="form-control input-sm"  style="width: 300px;"></asp:TextBox>
                                    
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 control-label" style="text-align: right; margin-top: 7px;">RESPONSE BY : </label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="tb_res" runat="server" class="form-control input-sm"  style="width: 300px;"></asp:TextBox>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="Button1" runat="server" Text="INSERT" class="btn btn-success btn-sm"  OnClick="Button1_Click" />
                            <%--<button type="button" id="insert" class="btn btn-success btn-sm" data-dismiss="modal">INSERT</button>--%>
                        </div>
                    </div>
                </div>
            </div>

                    </div>
                <div class="responsive">
                <div class="form-group row">
                    <div class="col-xs-2">
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#add"  runat="server" >Insert</button>
                        </div>
                    
                    </div>
                    </div>
              
                <hr />

                <!-------------------------------gridview------------------------------->
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" 
                        Width="100%" CssClass="table table-striped table-bordered table-hover"
                        runat="server"
                        AllowPaging="True" HeaderStyle-BackColor="Orange" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"   >
                        <Columns>

                            <asp:TemplateField >
                                <ItemTemplate>
                                   
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandArgument='<%# Eval("ID") %>' OnClientClick="return confirm('Are you sure you want delete : ต้องการลบข้อมูลหรือไม่');"  CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ForeColor="#8C4510" ID="lbEdit" runat="server" CommandArgument='<%# Eval("MEETINGDATE") %>' CommandName="EditRow">Edit</asp:LinkButton>
                                    
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:LinkButton ID="lbUpdate" runat="server" OnClientClick="return confirm('Are you sure you want Update');" CommandArgument='<%# Eval("ID") %>' CommandName="UpdateRow">Update</asp:LinkButton>
                                    <asp:LinkButton ForeColor="#8C4510" ID="lbCancel" runat="server" CausesValidation="false" CommandArgument='<%# Eval("MEETINGDATE") %>' CommandName="CancelUpdate">Cancel</asp:LinkButton>
                                </EditItemTemplate>
                              
                            </asp:TemplateField>



                            <asp:BoundField DataField="ID"  HeaderText="ID" SortExpression="ID" Visible="false" />

                            <asp:TemplateField HeaderText="MEETINGDATE" SortExpression="MEETINGDATE">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1"  runat="server"  onkeyup="onTxtKeyUpDate()" onkeypress="return isNumber(event) " class="form-control input-sm" Text='<%# Bind("MEETINGDATE") %>'></asp:TextBox>
                              
                                     <script type="text/javascript">
                                         var picker = new Pikaday(
                                         {
                                             field: document.getElementById('TextBox1'),
                                             defaultDate: document.getElementById('TextBox1'),
                                             setDefaultDate: true,
                                             maxDate: new Date(2020, 12, 31),
                                             yearRange: [2000, 2020]


                                         });
                             </script>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MEETINGDATE") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="STARTTIME" SortExpression="STARTTIME">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" MaxLength="5" onkeypress="isNumber(event)" onkeyup="onTxtKeyUp()" runat="server" class="form-control input-sm" Text='<%# Bind("STARTTIME") %>'></asp:TextBox>
                                <asp:Label ID="error_text2" Width="100%" runat="server" Text="" Visible="false" ForeColor="Red" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server"  Text='<%# Bind("STARTTIME") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FINISHTIME" SortExpression="FINISHTIME">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" MaxLength="5" onkeypress="isNumber(event)" onkeyup="onTxtKeyUp()" runat="server" class="form-control input-sm" Text='<%# Bind("FINISHTIME") %>'></asp:TextBox>
                                <asp:Label ID="error_text3" Width="100%" runat="server" Text="" Visible="false" ForeColor="Red" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("FINISHTIME") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TOPIC" SortExpression="TOPIC">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server"   style="width: 200px;" class="form-control input-sm" Text='<%# Bind("TOPIC") %>'></asp:TextBox>
                                <asp:Label ID="error_text4" Width="100%" runat="server" Text="" Visible="false" ForeColor="Red" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("TOPIC") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ROOM" SortExpression="ROOM">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control input-sm" Text='<%# Bind("ROOM") %>'></asp:TextBox>
                                <asp:Label ID="error_text5" Width="100%" runat="server" Text="" Visible="false" ForeColor="Red" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ROOM") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="RESPONSEBY" SortExpression="RESPONSEBY">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" class="form-control input-sm" Text='<%# Bind("RESPONSEBY") %>'></asp:TextBox>
                                <asp:Label ID="error_text6" Width="100%" runat="server" Text="" Visible="false" ForeColor="Red" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("RESPONSEBY") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>



                        </Columns>
                        
                         <EditRowStyle  />
                        
                    </asp:GridView>
                </div>

                <!-------------------------------gridview------------------------------->


            </div>
        </div>
        </div>
    
    

</asp:Content>
