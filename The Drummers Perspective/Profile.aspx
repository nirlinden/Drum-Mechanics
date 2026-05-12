<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="The_Drummers_Perspective.Profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center">
        <h1 class="main-title">MY PROFILE</h1>
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-5">
                <div class="card auth-card">

                    <div class="mb-3">
                        <label class="form-label text-uppercase small text-danger fw-bold">Username</label>
                        <asp:TextBox ID="txtUsername" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary" ReadOnly="true"></asp:TextBox>
                    </div>

                    <!-- email -->
                    <div class="mb-3">
                        <label class="form-label text-uppercase small text-danger fw-bold">Email Address</label>
                        <asp:TextBox ID="txtEmail" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary" TextMode="Email"></asp:TextBox>
                    </div>

                    <!-- phone -->
                    <div class="mb-3">
                        <label class="form-label text-uppercase small text-danger fw-bold">Phone</label>
                        <asp:TextBox ID="txtPhone" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary"></asp:TextBox>
                        <small class="text-white opacity-75" style="font-size: 0.7rem;">10 digits, starts with 0.</small>
                    </div>

                    <!-- style and explevel -->
                    <div class="row mb-4">
                        <div class="col-md-6">
                            <label class="form-label text-uppercase small text-danger fw-bold">Preferred Style</label>
                            <asp:DropDownList ID="ddlStyle" ClientIDMode="Static" runat="server" CssClass="form-select bg-dark text-white border-secondary">
                                <asp:ListItem Text="Select a style..." Value=""></asp:ListItem>
                                <asp:ListItem Text="Progressive Metal" Value="ProgMetal"></asp:ListItem>
                                <asp:ListItem Text="Progressive Rock" Value="ProgRock"></asp:ListItem>
                                <asp:ListItem Text="Thrash Metal" Value="Thrash"></asp:ListItem>
                                <asp:ListItem Text="Death Metal" Value="Death"></asp:ListItem>
                                <asp:ListItem Text="Hard Rock" Value="HardRock"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label text-uppercase small text-danger fw-bold">Experience Level</label>
                            <div class="text-white small mt-2">
                                <asp:RadioButton ID="rbBeginner" ClientIDMode="Static" GroupName="ExpLevel" runat="server" Text=" Beginner" />&nbsp;&nbsp;
                                <asp:RadioButton ID="rbAdvanced" ClientIDMode="Static" GroupName="ExpLevel" runat="server" Text=" Advanced" />
                            </div>
                        </div>
                    </div>

                    <hr class="border-secondary" />

                    <!-- password change -->
                    <h6 class="text-uppercase small text-danger fw-bold mb-3">Change Password</h6>

                    <div class="mb-3">
                        <label class="form-label text-uppercase small text-danger fw-bold">Current Password</label>
                        <asp:TextBox ID="txtCurrentPass" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label text-uppercase small text-danger fw-bold">New Password</label>
                            <asp:TextBox ID="txtNewPass" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-4">
                            <label class="form-label text-uppercase small text-danger fw-bold">Confirm New Password</label>
                            <asp:TextBox ID="txtConfirmNewPass" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

                    <asp:Label ID="lblMessage" runat="server" CssClass="d-none small fw-bold mb-3"></asp:Label>

                    <asp:Button ID="btnSave" runat="server" Text="SAVE CHANGES" CssClass="btn" OnClick="btnSave_Click" OnClientClick="return validateProfile();" />

                    <div class="text-center mt-3">
                        <a href="Default.aspx" class="text-white opacity-75">← Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">
    function validateProfile() {
        let email = document.getElementById('txtEmail').value;
        let phone = document.getElementById('txtPhone').value;
        let currentPass = document.getElementById('txtCurrentPass').value;
        let newPass = document.getElementById('txtNewPass').value;
        let confirmNewPass = document.getElementById('txtConfirmNewPass').value;

        if (email.trim() === "") {
            alert("Email cannot be empty.");
            return false;
        }

        if (email.indexOf('@') === -1) {
            alert("Please enter a valid email address.");
            return false;
        }

        const trimmedPhone = phone.trim();
        if (trimmedPhone !== "") {
            const isTenDigits = trimmedPhone.length === 10;
            const startsWithZero = trimmedPhone.startsWith('0');
            const isAllNumbers = !isNaN(trimmedPhone) && !trimmedPhone.includes(' ');

            if (!isTenDigits || !startsWithZero || !isAllNumbers) {
                alert("Phone number must be exactly 10 digits and start with a 0.");
                return false;
            }
        }

        if (currentPass !== "" || newPass !== "" || confirmNewPass !== "") {
            if (currentPass.trim() === "" || newPass.trim() === "" || confirmNewPass.trim() === "") {
                alert("To change your password, fill in all three password fields.");
                return false;
            }
            if (newPass !== confirmNewPass) {
                alert("New passwords do not match.");
                return false;
            }
        }

        return true;
    }
</script>

</asp:Content>