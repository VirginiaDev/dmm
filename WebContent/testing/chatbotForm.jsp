
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<div class="container">
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
     <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
         
<div class="main-card">
  <div class="main-title">
    <div class="col-md-3">VNS.DMM</div>
    <div class="col-md-3 col-cm">Hi there &nbsp;<i class="fa fa-hand-paper-o" aria-hidden="true"></i></div>
    <div class="col-md-4 col-cm">
      <div class="dropdown">
        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><i class="fa fa-ellipsis-v" aria-hidden="true"></i>
        </button>
        <ul class="dropdown-menu">
          <li><a href="#">D1</a></li>
          <li><a href="#">D2</a></li>
          <li><a href="#">D3</a></li>
        </ul>
      </div>
    </div>


    <div class="col-md-2 col-rm">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
    </div>
    
  </div>
<div class="col-md-12 col-sm-12 col-lr">
      <span class="rp"><i class="fa fa-circle" aria-hidden="true"></i>&nbsp;&nbsp;We reply immediately</span>
    </div>
  
 
  <div class="col-sm-12 col-md-12">
    <div class="logo">VNS.DMM</div>
    <h1 class="title_top">Please introduce yourself:</h1>

 </div>

 <div class="col-sm-8 col-md-8 col-cn">
      <div class="card-body py-md-4">
       <form _lpchecked="1">
        <div class="form-group">
             <input type="email" class="form-control" id="email" placeholder="Emter your email">
        </div>                                                 
       <div class="form-group">
         <input type="text" class="form-control" id="password" placeholder="Enter your phone">
       </div>
       
       <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">&nbsp;<b style="color: #868686;
    font-weight: 500;">Sign up for our newsletter</b>
       <div class="d-flex flex-row align-items-center justify-content-between">
          <a href="#">Send</a>  
        </div>
       </form>
     </div>
</div>
</div>
 </div>
  </div>
  
</div>
<style>
.col-cn {
    margin: 0 auto;
}
.d-flex.flex-row.align-items-center.justify-content-between a {
    background-color: #f76c51;
    padding: 10px 26px;
    border-radius: 5px;
    color: #fff;
    margin: 0 auto;
    text-align: center;
    margin-top: 15px;
    display: block;
    margin-bottom: 43px;
}
.title_top {
    color: #8e8e8e;
    font-size: 18px;
    text-align: center;
    font-weight: bold;
    margin-bottom: 30px;
}

.logo {
    color: #f76c51;
    font-size: 20px;
    font-weight: 800;
    text-align: center;
    padding-top: 50px;
}

.card{
  border: 0.40rem solid #f8f9fa;
  top: 10%;
}
.form-control{
  background-color: #f8f9fa;
  padding: 20px;
  padding: 25px 15px;
  margin-bottom: 1.3rem;
}

.form-control:focus {

    color: #000000;
    background-color: #ffffff;
    border: 3px solid #da5767;
    outline: 0;
    box-shadow: none;

}

.btn{
  padding: 0.6rem 1.2rem;
  background: #da5767;
  border: 2px solid #da5767;
}
.btn-primary:hover {

    
    background-color: #df8c96;
    border-color: #df8c96;
  transition: .3s;

}


*:focus {
    outline: none !important;
}

.input-group .material-icons svg {
    width: 26px;
    height: 26px;
}
.btn.btn-info.btn-lg {
    position: fixed;
    cursor: pointer;
    right: 60px;
    bottom: 28px;
}
  .btn.btn-info.btn-lg {
    background: #f76c51;
    width: 53px;
    height: 50px;
    border-radius: 24px;
    border: none;
    box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.rp {
    background-color: #f76c51;
    display: block;
    padding: 10px;
}
  .col-lr {
    padding-left: 0px;
    padding-right: 0px;
}
.col-rm {
    padding-left: 0px;
}
.col-cm .btn.btn-primary.dropdown-toggle {
    float: right;
    padding-top: 0px;
}
.col-cm {
    padding-right: 0;
}
.modal-header {
    padding: 0px;
    border-bottom: 0px solid #e5e5e5;
    float: left;
    margin-left: 30px;
    margin-top: 6px;
}
.btn-primary {
    color: #fff;
    background-color: transparent;
    border-color: transparent;
}
.btn-primary:hover {
    color: #fff;
    background-color: transparent;
    border-color: transparent;
}
.btn-primary.active, .btn-primary:active, .open>.dropdown-toggle.btn-primary {
    color: #fff;
    background-color: transparent !important;
    background-image: none;
    border-color: transparent !important;
}
.modal-header .close {
    margin-top: -10px;
    font-size: 30px;
    color: #000 !important;
}
.fa-ellipsis-v:before {
    content: "\f142";
    font-size: 20px;
}
.dropdown-menu {
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    display: none;
    float: left;
    min-width: 160px;
    padding: 5px 0;
    margin: 2px 0 0;
    font-size: 14px;
    text-align: left;
    list-style: none;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 4px;
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
    top: 46px;
}


.main-card {
  background:white;
  color:white;
  width: 80%;
  height: calc(100% - 32px);
  margin: 16px auto;
  border-radius: 8px;
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  display:flex;
  flex-direction:column;
  overflow: hidden;
}


.main-title {
    background-color: #ff7f66;
    font-size: large;
    font-weight: bold;
    padding-top: 20px;
    padding-bottom: 10px;
}
.main-title svg{
  height: 16px;
   margin: 0px 8px
}

.chat-area {
  flex-grow: 1;
  overflow: auto;
  border-radius: 8px;
  padding: 16px;
  display: flex;
  flex-direction: column;
}
.input-message {
  padding: 8px 24px;
  flex-grow: 1;
  margin: 0px 8px 0px 0px;
  border-radius: 24px;
  border: none;
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  color: #000;
}
.input-message:focus{
  outline :none;
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.25);
}
.input-div {
  height: 48px;
  width: calc(100% - 32px);
  margin: 16px;
  display: flex;
}

.input-send {
  background :#ff7f66;
  width: 48px;
  height: 48px;
  border-radius: 24px;
  border: none;
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.input-send:hover{
  cursor:pointer;  
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.25);
}
.input-send svg{
  fill:white;
  margin:11px 8px;
}
.chat-message-div {
  display: flex;
}

.chat-message {
  background-color: white;
  margin: 8px 16px;
  padding: 16px 24px;
  animation-name: fadeIn;
  animation-iteration-count: 1;
  animation-timing-function: ease-in;
  animation-duration: 100ms;
  box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.11);
  color:black;
  border-radius: 50px;
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }

  to {
    opacity: 1;
  }
}
::-webkit-scrollbar {
  width: 10px;
}
::-webkit-scrollbar-track {
  background: #f1f1f1; 
}
 
::-webkit-scrollbar-thumb {
  background: #888; 
}

::-webkit-scrollbar-thumb:hover {
  background: #555; 
}
</style>

<script>
  var running = false
    function send() {
        if (running == true)
            return
        var msg = document.getElementById("message").value
        if (msg == "")
            return
        running = true
        addMsg(msg)
        window.setTimeout(addResponseMsg, 1000, msg)
    }
    function addMsg(msg) {
        var div = document.createElement("div");
        div.innerHTML = "<span style='flex-grow:1'></span><div class='chat-message'>" + msg + "</div>"
        div.className = "chat-message-div"
        document.getElementById("message-box").appendChild(div)
    }
    function addResponseMsg(msg) {
        var div = document.createElement("div");
        div.innerHTML = "<div class='chat-message'>" + msg + "</div>"
        div.className = "chat-message-div"
        document.getElementById("message-box").appendChild(div)
        running = false
    }
    document.getElementById("message").addEventListener("keyup", function (event) {
        if (event.keyCode === 13) {
            event.preventDefault();
            send()
        }
    });
</script>