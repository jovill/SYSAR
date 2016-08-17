<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="login.aspx.cs" Inherits="SISTEMA_ARYA.login" %>

  <asp:Content runat="server" ContentPlaceHolderID="head">
      <script>
          window.onload = function () {
              $(".main-menu").css("display", "none");

          }
      </script>
     <style>
         .centro {
	    width:300px;
	    height:50%;
	    position:absolute;
	    top:40%;
	    left:45%;
	    margin-top:-50px;
	    margin-left:-50px;
      }
     </style>
        
    </asp:Content>

    <asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
        <center >
            <asp:Label runat="server" ID="sistema">

            </asp:Label>
        </center>

        
        <%--<div class="col-md-5"></div>--%>
        <div class="centro">            

             <form runat="server" class="form-signin">
            
                 <h3 class="form-signin-heading" style="color:#333333;">Autenticação</h3>
                    <label for="inputEmail" class="sr-only">Nome de Usuário</label>
                    <asp:TextBox runat="server" type="text" id="inputUser" class="form-control" placeholder="Nome de usuário" required autofocus></asp:TextBox>
                    <br />
                    <label for="inputPassword" class="sr-only">Senha</label>
                    <asp:TextBox runat="server" type="password" id="inputPassword" class="form-control" placeholder="Senha" required></asp:TextBox>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value="remember-me"> Lembre-me
                        </label>
                    </div>
            
                    <asp:Button ID="btnLogar" runat="server" class="btn btn-md btn-primary btn-block" type="submit" Text="Entrar" />
                    <br /><br />
                    <asp:Label ID="Label1" runat="server" Text="" ></asp:Label> 


           
           

         </form>

        </div> <!-- /container -->

       
        
        <%--<div class="col-md-5"></div>--%>

        
        <script>
            localStorage.setItem('Tempo', 0);
            

            $(".btn-block").click(function () {
                
              
               
            });



        </script>
         
    </asp:Content>


