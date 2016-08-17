<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="login.aspx.cs" Inherits="SISTEMA_ARYA.login" %>

  <asp:Content runat="server" ContentPlaceHolderID="head">
      <script>
          window.onload = function () {
              $(".main-menu").css("display", "none");

          }
      </script>
     <style>
         body{
             background: #013a81;
         }
         .centro {
	    width:300px;
	    height:50%;
	    position:absolute;
	    top:52%;
	    left:45%;
	    margin-top:-50px;
	    margin-left:-50px;
      }
          #alinhalogo {
	    width:400px;
	    height:200px;
	    position:absolute;
	    top:30%;
	    left:43%;
	    margin-top:-50px;
	    margin-left:-50px;
        
      }
       .borda {
           background: #fff;
	    width:600px;
	    height:500px;
        border: solid #9fd5b5  ;
        border-radius:5%;
        position:absolute;  
        top:25%;
	    left:38%;
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
        <div class="borda">
        </div>
             <div id="alinhalogo">
            <img src="img/logo_arya.jpg"  width="400" height="200"/>
        </div>
        <div class="centro">            

             <form runat="server" class="form-signin">

                 
            
                 <%--<h3 class="form-signin-heading" style="color:#333333;">Autenticação</h3>--%>
                    <label for="inputEmail" class="sr-only">Nome de Usuário</label>
                    <asp:TextBox runat="server" type="text" id="inputUser" class="form-control" placeholder="Nome de usuário" required autofocus></asp:TextBox>
                    <br />
                    <label for="inputPassword" class="sr-only">Senha</label>
                    <asp:TextBox runat="server" type="password" id="inputPassword" class="form-control" placeholder="Senha" required></asp:TextBox>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value="remember-me"> Lembre-me
                        </label>
                        <a href="#" style="float:right">Esqueci a senha.</a>
                    </div>
            
                    <asp:Button ID="btnLogar" runat="server" width="50%" class="btn btn-md btn-primary" type="submit" Text="Entrar" />
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


