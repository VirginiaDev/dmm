  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


<style>
.processing{
  animation: shake 0.5s;
  animation-iteration-count: infinite;
}
.form3 input {
    color: #fff !important;
    
}
  </style>
  <form id="inquiry" novalidate="true" class="shake animated">
                    <span class="up reveal--up revealed" data-reveal="up">YOU'RE INTERESTED IN
                    
                    Brand & Strategy </span>
                 <input type="hidden" id="brandingvalue" name="brandingvalue" value="no">
                 <input type="hidden" id="contentvalue" name="contentvalue" value="no">
                 <input type="hidden" id="brandingvalue" name="brandingvalue" value="no">
                 <input type="hidden" id="brandingvalue" name="brandingvalue" value="no">
                 <input type="hidden" id="brandingvalue" name="brandingvalue" value="no">
                 <input type="hidden" id="brandingvalue" name="brandingvalue" value="no">
                 <input type="hidden" id="brandingvalue" name="brandingvalue" value="no">
                 <input type="hidden" id="brandingvalue" name="brandingvalue" value="no">
                 <input type="hidden" id="brandingvalue" name="brandingvalue" value="no">
                 <input type="hidden" id="brandingvalue" name="brandingvalue" value="no">
                    <ul class="services">
                    
                      <li data-reveal="up" class="reveal--up revealed">
                        <input id="branding" type="checkbox" value="branding" data-title="Brand Strategy &amp; Design">
                        <label for="branding">Brand Strategy &amp; Design</label>
                      </li>
                      <li data-reveal="up" class="reveal--up revealed">
                        <input id="content" type="checkbox" value="content" data-title="Content Strategy">
                        <label for="content">Content Strategy</label>
                      </li>
                      <li data-reveal="up" class="reveal--up revealed">
                        <input id="design" type="checkbox" value="design" data-title="UX &amp; UI Design">
                        <label for="design">UX &amp; UI Design</label>
                      </li>
                      <li data-reveal="up" class="reveal--up revealed">
                        <input id="ecommerce" type="checkbox" value="ecommerce" data-title="eCommerce Design">
                        <label for="ecommerce">eCommerce Design</label>
                      </li>
                      <li data-reveal="up" class="reveal--up revealed">
                        <input id="webbdev" type="checkbox" value="webbdev" data-title="Web Development">
                        <label for="webbdev">Web Development</label>
                      </li>
                      <li data-reveal="up" class="reveal--up revealed">
                        <input id="apps" type="checkbox" value="apps" data-title="App Design &amp; Development">
                        <label for="apps">App Design &amp; Development</label>
                      </li>
                      <li data-reveal="up" class="reveal--up revealed">
                        <input id="vr" type="checkbox" value="vr" data-title="VR &amp; AR Design">
                        <label for="vr">VR &amp; AR Design</label>
                      </li>
                      <li data-reveal="up" class="reveal--up revealed">
                        <input id="performance" type="checkbox" value="performance" data-title="Performance Marketing">
                        <label for="performance">Performance Marketing</label>
                      </li>
                      <li data-reveal="up" class="reveal--up revealed">
                        <input id="print" type="checkbox" value="print" data-title="Print Design">
                        <label for="print">Print Design</label>
                      </li>
                      <li data-reveal="up" class="reveal--up revealed" id="noneselected">
                        <input id="nonee" type="checkbox" value="nonee" data-title="None of the above" onclick="uncheckOtherOptions()">
                        <label for="nonee">None of the above</label>
                      </li>
                    </ul>
                    <span class="more">MORE ABOUT YOU </span>
                    <div class="row mt-20">
                     
                      <div class="col-md-12 no_pad">
                        <div class="form-group form3">
                          <input type="text" class="form-control" id="name2" name="name" placeholder="Name" required="" data-error="Please enter your name">
                          <div class="help-block with-errors">
                            <ul class="list-unstyled">
                              <li>Please enter your name</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6 no_pad">
                        <div class="form-group form3">
                          <input type="text" placeholder="Email" id="email2" class="form-control" name="email" required="" data-error="Please enter your email">
                          <div class="help-block with-errors">
                            <ul class="list-unstyled">
                              <li>Please enter your email</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6 no_pad">
                        <div class="form-group form3">
                          <input type="text" placeholder="Phone Number" id="phn2" class="form-control" name="phn" required="" data-error="Please enter your Phone Number">
                          <div class="help-block with-errors">
                            <ul class="list-unstyled">
                              <li>Please enter your Phone Number</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6 no_pad">
                        <div class="form-group form3">
                          <input type="text" placeholder="Company Name" id="company_name" class="form-control" name="email" required="" data-error="Please enter your email">
                          <div class="help-block with-errors">
                            <ul class="list-unstyled">
                              <li>Please enter Company Name</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6 no_pad">
                        <div class="form-group form3">
                          <input type="text" placeholder="Estimate Budget" id="budget" class="form-control" name="phn" required="" data-error="Please enter your Phone Number">
                          <div class="help-block with-errors">
                            <ul class="list-unstyled">
                              <li>Please enter Estimate Budget</li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-12 no_pad" style="width:100%;">
                        <div class="form-group form3">
                          <textarea class="form-control" id="message2" placeholder="Your Message" rows="3" data-error="Please enter Breif about your project" style="width:100%;" required=""></textarea>
                          <div class="help-block with-errors">
                            <ul class="list-unstyled">
                              <li>Please enter Breif about your project</li>
                            </ul>
                     </form>
                          </div>
                        </div>
                      
<div class="submit-button text-left">
                          <div class="form-group form3"> <a class="carrow cta" id="form-submit" onclick="contact()" type="button" style="pointer-events: all; cursor: pointer;max-width: 300px;margin-top: 3em;"> Send Business Enqiry <span></span> </a>
                            <!--  <div id="msgsubmit" class="h3 text-center hidden">Nothing</div><br>-->
                            <div id="msgsubmitSuccess" style="display:none" class="h3 text-left tada animated text-success">Message Submitted!</div><br>
                            <div id="msgsubmitFailed" style="display:none" class="h3 text-left text-danger">Please fill all the details correctly!!</div>
                            <div class="clearfix"></div>
                          </div>
                        </div>
                        <script>
                        function change(){
                        	document.getElementById('msgsubmitFailed').style.display='block';
                        }
                        </script>
                        <script>
    function contact(){
    	
    	//alert("working");
var noneselected=document.getElementById("nonee");
    	
    	if (noneselected.checked == true){
    		noneselected='yes';
    		//uncheckOtherOptions();
    		} else {
    		  noneselected='no';
    	  }
    	var branding=document.getElementById("branding");
    	
    	if (branding.checked == true){
    		branding='yes';
    	  } else {
    		  branding='no';
    	  }
	var content=document.getElementById("content");
    	
    	if (content.checked == true){
    		content='yes';
    	  } else {
    		  content='no';
    	  } 
	var design=document.getElementById("design");
    	
    	if (design.checked == true){
    		design='yes';
    	  } else {
    		  design='no';
    	  }
var ecommerce=document.getElementById("ecommerce");
    	
    	if (ecommerce.checked == true){
    		ecommerce='yes';
    	  } else {
    		  ecommerce='no';
    	  } 
var webbdev=document.getElementById("webbdev");
    	
    	if (webbdev.checked == true){
    		webbdev='yes';
    	  } else {
    		  webbdev='no';
    	  } 
var apps=document.getElementById("apps");
    	
    	if (apps.checked == true){
    		apps='yes';
    	  } else {
    		  apps='no';
    	  } 
var vr=document.getElementById("vr");
    	
    	if (vr.checked == true){
    		vr='yes';
    	  } else {
    		  vr='no';
    	  } 
var performance=document.getElementById("performance");
    	
    	if (performance.checked == true){
    		performance='yes';
    	  } else {
    		  performance='no';
    	  } 
var print=document.getElementById("print");
    	
    	if (print.checked == true){
    		print='yes';
    	  } else {
    		  print='no';
    	  } 
  	
    	//alert(content+"---"+design+"==="+ecommerce+"===="+webbdev+"===="+apps+"==="+vr+"===="+performance+"=="+print);
    
    var name=document.getElementById('name2').value;
    
    var email=document.getElementById('email2').value;
    
    var phn=document.getElementById('phn2').value;
    var company_name=document.getElementById('company_name').value;
    var budget=document.getElementById('budget').value;
    var message=document.getElementById('message2').value;
    var phoneno = /^\d{10}$/;
  //alert(name+"==="+email+"==="+phn+"==="+company_name+"=="+budget+"===="+message);
    //alert(name.length+"==="+email.length+"==="+phn.length+"==="+company_name.length+"=="+budget.length+"===="+message.length);
    if(name.length==0 || email.length==0 || phn.length==0 || company_name.length==0 || budget.length==0 ||message.length==0){
    	////alert("please fill all the feilds correctly");
    	 formError();
    	 submitMSG(false, "please fill all the feilds correctly");
    }else{
    	if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) && phn.match(phoneno))
		  {
    		 submitForm(branding,content,design,ecommerce,webbdev,apps,vr,performance,print,noneselected,name,email,phn,company_name,budget,message);
    		/*  $(document).ready(function() {
    			 // var myKeyVals = { A1984 : 1, A9873 : 5, A1674 : 2, A8724 : 1, A3574 : 3, A1165 : 5 }
      	        
      	        $.ajax({
      	        url: "save_contact_details.jsp",
      	        type: "post",
      	        data: {
      	        	branding:branding,
      	        	content:content,
      	        	design:design,
      	        	ecommerce:ecommerce,
      	        	webbdev:webbdev,
      	        	apps:apps,
      	        	vr:vr,
      	        	performance:performance,
      	        	print:print,
      	        	noneselected:noneselected,
      	        	name:name,
      	        	email:email,
      	        	phn:phn,
      	        	company_name:company_name,
      	        	budget:budget,
      	        	message:message},
      	        	
      	        success : function(data){
      	        //alert("sahuhuhu"+data);
      	        	document.getElementById("inquiry").reset();
      	        }
      	        
      	        });
      	        
      	        });		*/
		  }else{
			//  //alert("please enter a valid email or phone number");
				 formError();
				
		    	 submitMSG(false, "please fill all the feilds correctly");
		  }
    
    }
  
    }
    </script>
    <script>
    function uncheckOtherOptions(){
    //	//alert("working");
    	 $("#branding").prop("checked", false);
    		$("#content").prop("checked", false);
    		$("#design").prop("checked", false);
    		$("#ecommerce").prop("checked", false);
    		$("#webbdev").prop("checked", false);
    		$("#apps").prop("checked", false);
    		$("#vr").prop("checked", false);
    		$("#performance").prop("checked", false);
    		$("#print").prop("checked", false);
    	  	
    }
   
    </script>
    <script>
    function submitForm(branding,content,design,ecommerce,webbdev,apps,vr,performance,print,noneselected,name,email,phn,company_name,budget,message){
        // Initiate Variables With Form Content
       /* var name = $("#name2").val();
        var email = $("#email2").val();
       
        var message = $("#message2").val();*/
       //alert("submitForm");
        $(document).ready(function() {
       	 $("#inquiry").removeClass().addClass('processing');
        $.ajax({
            type: "POST",
            url: "save_contact_details.jsp",
            data: {
    	        	branding:branding,
    	        	content:content,
    	        	design:design,
    	        	ecommerce:ecommerce,
    	        	webbdev:webbdev,
    	        	apps:apps,
    	        	vr:vr,
    	        	performance:performance,
    	        	print:print,
    	        	noneselected:noneselected,
    	        	name:name,
    	        	email:email,
    	        	phn:phn,
    	        	company_name:company_name,
    	        	budget:budget,
    	        	message:message},
    	               
    	        	success : function(data){
    	        		////alert("texttt==="+text);
    	        		////alert("jhbhjshvshvhvsgvsg");
    	        		 $("#inquiry").removeClass().addClass('shake animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
            $(this).removeClass();
        });
    	        		formSuccess();
                /*if (text == "success"){
                    formSuccess();
                } else {
                    formError();
                    submitMSG(false,text);
                }*/
            }
        });
        });
    }

    function formSuccess(){
    	//alert("formSuccess");
        $("#inquiry")[0].reset();
        submitMSG(true, "Message Submitted!")
    }

    function formError(){
    	//alert("formError");
        $("#inquiry").removeClass().addClass('shake animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
            $(this).removeClass();
        });
    }

    function submitMSG(valid, msg){
    	//alert("submitMSG");
        if(valid){
        	//alert("valid");
           // var msgClasses = "h3 text-left tada animated text-success";
           document.getElementById('msgsubmitFailed').style.display='none';
           document.getElementById('msgsubmitSuccess').style.display='block';
        } else {
        	//alert("not valid");
          //  var msgClasses = "h3 text-left text-danger";
          document.getElementById('msgsubmitSuccess').style.display='none';
          document.getElementById('msgsubmitFailed').style.display='block';        
          }
       // $("#msgSubmit").removeClass().addClass(msgClasses).text(msg);
    }

    </script>
    <style>
    .form-control {
    color: #fff;
}

    </style>
 