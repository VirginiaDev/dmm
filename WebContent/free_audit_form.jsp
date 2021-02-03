<form id="free_audit_details" action="save_free_audit_details.jsp?source_page=other&pageurl=index" method="post">
												<input type="hidden" id="source_page" name="source_page" value="">
												<input type="hidden" id="pageurl" name="pageurl" value="">
													<h1 style="color:#323234;">Get a Free Audit</h1>
													<div class="row">
														<div class="col-md-12 no_pad">
															<div class="form-group">
																<input type="text" class="form-control" id="name" name="name" placeholder="Name" required="" data-error="Please enter your name"> </div>
														</div>
														<div class="col-md-12 no_pad">
                        <div class="form-group">
                          <input type="text" placeholder="Email" id="fa_email" class="form-control" name="email" required="" data-error="Please enter your email" onkeyup="checkEmailValidity()">
                        </div>
                        <p id="email_error" class="validation_errors" style="display:none">Enter a valid email address</p>
                      </div>
                      <div class="col-md-12 no_pad">
                        <div class="form-group">
                          <input type="text" placeholder="Phone Number" id="fa_phn" class="form-control" name="phn" required="" data-error="Please enter your Phone Number" onkeyup="checkPhoneValidity()">
                        </div>
                 <p id="phn_error" class="validation_errors" style="display:none">Enter a valid Phone Number</p>
                        
                      </div>
														<div class="col-md-12 no_pad" id="options_div" style="display:none">
								                        <div class="form-group">
								                        <select style="color: #a5a5a5;" class="form-control" name="service_selected" id="services_option" required="" data-error="Please select an option">
								                        <option class="form-control" value="" selected>Select an option</option>
								                        <option class="form-control" value="digitalmarketing">Digital Marketing</option>
								                        <option class="form-control" value="brandingandidentity">Branding and identity</option>
								                        <option class="form-control" value="orm">ORM</option>
								                         <option class="form-control" value="orm">OTHER</option>
								                        <option class="form-control" value="webanddevelopment">Web and Development</option>
								                        </select>
								                        </div>
								                      </div>
								                       <div class="col-md-12 no_pad">
                        <div class="form-group">
                          <input type="text" placeholder="Message" id="msg" class="form-control" name="msg" required="" data-error="Please enter your message">
                        </div>
                      </div>
														<div class="col-md-12 no_pad" style="width:100%;">
															<div class="submit-button text-left">
																<div class="form-group">
																	<button class="contact btn-5 arrow view-all reveal--up revealed" type="submit" id="fa_submit_button" style="display:block"> <a class="arrow view-all reveal--up revealed">Send Now<span></span> </a> </button>
																	<div id="msgSubmit" class="h3 text-center hidden"></div>
																	<div class="clearfix"></div>
																</div>
																</form>
						