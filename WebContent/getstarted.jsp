

  
  <!-- Trigger the modal with a button -->

  <!-- Modal -->
  <div class="modal fade" id="getstarted" role="dialog">
    <div class="modal-dialog" id="get-stard">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" id="close-icon">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
         
		  <form action="" class="getstarted">
		    
		     <div class="form-group">
		      <label for="Name">Name:</label>
		      <input type="Name" class="form-control" id="Name" placeholder="Enter Name" name="Name" required>
		    </div>
		    
		    <div class="form-group">
		      <label for="email">Email:</label>
		      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
		    </div>
		    
		     <div class="form-group">
		      <label for="Name">Phone:</label>
		      <input type="Phone" class="form-control" id="Phone" placeholder="Enter Phone" name="Phone" required>
		    </div>
		    
		    
		     <div class="form-group">
		      <label for="Name">What services you want?:</label>
		     <select name="getst" id="getst">
			    <option value="SEO">SEO</option>
			    <option value="PPC">PPC</option>
			    <option value="SMM">SMM</option>
			    <option value="Audi">Audi</option>
			  </select>
		    </div>
		    
		     <div class="form-group">
			  <label for="comment">Message:</label>
			  <textarea class="form-control" rows="5" id="comment"></textarea>
			</div>
  
		    <button type="submit" class="btn btn-primary2">Submit</button>
		  </form>
 
      </div>
      
    </div>
  </div>
  

<style>
.getstarted {
    padding: 16px;
}
.btn.btn-primary2 {
    background-color: #f76c51;
    color: #fff;
    margin-left: 25px;
    float: left;
}
.btn.btn-primary2:hover {
    color: #fff;
}
#getst {
    width: 100%;
    padding: 7px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-bottom: 12px;
}

#get-stard {
    width: 100%;
    margin: 0 auto;
    display: flex;
}
#get-stard .modal-content {
    width: 40%;
    margin: 0 auto;
}
#close-icon {
    width: 100%;
    position: absolute;
    left: 14px;
    top: 63px;
    left: -12px;
}

.form-group {
    text-align: left;
}
@media screen and (min-width: 320px) and (max-width:991px) {
#get-stard .modal-content {
    width: 97%;
    margin: 0 auto;
}
}
</style>
