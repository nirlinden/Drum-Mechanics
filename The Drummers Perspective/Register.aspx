<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="The_Drummers_Perspective.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center pt-5">
        <h1 class="metal-title" style="font-size: 3.5rem;">REGISTER</h1>

        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-5">
                <div class="card auth-card p-4 text-white text-start">
                    
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label text-uppercase small text-danger fw-bold">Username</label>
                            <asp:TextBox ID="txtUsername" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary"></asp:TextBox>
                            <small class="text-muted" style="font-size: 0.7rem;">Min 4 chars, letters/numbers only.</small>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label text-uppercase small text-danger fw-bold">Phone</label>
                            <asp:TextBox ID="txtPhone" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary"></asp:TextBox>
                            <small class="text-muted" style="font-size: 0.7rem;">10 digits, starts with 0.</small>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-uppercase small text-danger fw-bold">Email address</label>
                        <asp:TextBox ID="txtRegEmail" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary" TextMode="Email"></asp:TextBox>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label text-uppercase small text-danger fw-bold">Password</label>
                            <asp:TextBox ID="txtRegPass" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-4">
                            <label class="form-label text-uppercase small text-danger fw-bold">Confirm Password</label>
                            <asp:TextBox ID="txtConfirmPass" ClientIDMode="Static" runat="server" CssClass="form-control bg-dark text-white border-secondary" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

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

                    <div class="mb-4 form-check text-start">
                        <input type="checkbox" id="chkTerms" runat="server" class="form-check-input border-secondary" clientidmode="Static" />
                        <label class="form-check-label small text-white opacity-75" for="chkTerms">I agree to the drumming rules and regulations.</label>
                    </div>

                    <asp:Label ID="lblServerMessage" runat="server" CssClass="d-none small fw-bold mb-3"></asp:Label>

                    <asp:Button ID="btnRegister" runat="server" Text="REGISTER" CssClass="btn btn-red w-100 py-2 fw-bold" OnClick="btnRegister_Click" OnClientClick="return validateRegistration();" />
                    
                    <div class="text-center mt-3">
                        <a href="Login.aspx" class="text-muted small text-decoration-none">Already have an account? Log In</a>
                    </div>
                </div>

            </div>
        </div>
    </div>

<script type="text/javascript">
    function validateRegistration() {
        // Because you used ClientIDMode="Static", we can just use your exact IDs! No server tags needed.
        var username = document.getElementById('txtUsername').value;
        var phone = document.getElementById('txtPhone').value;
        var email = document.getElementById('txtRegEmail').value;
        var pass = document.getElementById('txtRegPass').value;
        var confirmPass = document.getElementById('txtConfirmPass').value;
        var terms = document.getElementById('chkTerms').checked;

        // 1. Check for empty fields
        if (username.trim() === "" || email.trim() === "" || pass.trim() === "") {
            alert("Hold up! Username, Email, and Password are required to register.");
            return false; // Stops the form from submitting
        }

        // 2. Check if passwords match
        if (pass !== confirmPass) {
            alert("Your passwords do not match. Try again!");
            return false;
        }

        // 3. Check for basic email structure
        if (email.indexOf('@') === -1) {
            alert("Please enter a valid email address.");
            return false;
        }

        // 4. Check Phone Number (10 digits, starts with 0)
        if (phone.trim() !== "") {
            var phoneRegex = /^0\d{9}$/; // Regular expression: Starts with 0, followed by exactly 9 numbers
            if (!phoneRegex.test(phone.trim())) {
                alert("Phone number must be exactly 10 digits and start with a 0.");
                return false;
            }
        }

        // 5. Check if Terms are agreed to
        if (terms === false) {
            alert("You must agree to the drumming rules and regulations.");
            return false;
        }

        // If all checks pass, allow the server to do its job!
        return true;
    }
</script>

</asp:Content>