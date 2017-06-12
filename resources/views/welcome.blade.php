<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
	    
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		
		<title>Rauxa</title>

		<link rel="stylesheet" href="/assets/css/bootstrap.min.css" type="text/css" media="all" />
		<link rel="stylesheet" href="/assets/css/font-awesome.min.css" type="text/css" media="all" />
		<link rel="stylesheet" href="/assets/css/app.css" type="text/css" media="all" />

		<script type='text/javascript' src="/assets/js/app.js"></script>
		<script type='text/javascript' src="/assets/js/master.js"></script>
       
    </head>
    <body>
        <div class="container-fluid">        
            <nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand" href="#">
			        <img alt="Rauxa" src="/assets/img/logo.png">
			      </a>
			    </div>
			    
			    <div class="navbar-right btns-right">
				    <button type="button" class="btn btn-default navbar-btn">Browse Lists</button>
				    	
					  <div class="btn-group navbar-btn">
						  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    Admin <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu">
						    <li><a href="#">Markets</a></li>
						    <li><a href="#">Actions</a></li>
						    <li><a href="#">Vendors</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="#">Update Password</a></li>
						  </ul>
						</div>
					
				</div>
				
			  </div>
			</nav>
				
			<form>
			<div class="container form-wrap">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
					        
					        <h4 class="modal-title">Barcode Generator</h4>
					      </div>
					      <div class="modal-body">
						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-label" for="i_client_name">Client Name</label>
								<div class="col-md-8">
									<input type="email" class="form-control input-sm" id="i_client_name" name="client_name" placeholder="Email" required>
								</div>
								<div class="col-md-1">
									<button type="button" class="btn btn-warning btn-sm" data-container="body" data-toggle="popover" title="Info" data-content="{{ $vendor }}">
										<span class="fa fa-question-circle"></span>
									</button>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-label" for="i_vendor">Vendor</label>
								<div class="col-md-8">
									<select class="form-control input-sm" id="i_vendor" name="vendor" required>
									    <option value="">Select Vendor</option>
									    <option value="1">Rauxa</option>
								    </select>
								</div>
								<div class="col-md-1">
									<button type="button" class="btn btn-warning btn-sm" data-container="body" data-toggle="popover" title="Info" data-content="{{ $vendor }}">
										<span class="fa fa-question-circle"></span>
									</button>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-label" for="i_vendor">Market</label>
								<div class="col-md-8">
									<select class="form-control input-sm" id="i_market" name="market" required>
									    <option value="">Select Area</option>
									    <option value="GL">Great Lakes: GL</option>
									    <option value="NC">North Central: NC</option>
									    <option value="NE">North East: NE</option>
									    <option value="PA">Pacific: PA</option>
									    <option value="SC">South Central: SC</option>
									    <option value="SE">South East: SE</option>
								    </select>
								</div>
								<div class="col-md-1">
									<button type="button" class="btn btn-warning btn-sm" data-container="body" data-toggle="popover" title="Info" data-content="{{ $market }}">
										<span class="fa fa-question-circle"></span>
									</button>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-label" for="i_action">Action</label>
						
								<div class="col-md-8">
									<select class="form-control input-sm" id="i_action" name="action" required>
									    <option value="">Select One</option>
									    <option value="A">Append</option>
									    <option value="S">Replace</option>
								    </select>
								</div>
								<div class="col-md-1">
									<button type="button" class="btn btn-warning btn-sm" data-container="body" data-toggle="popover" title="Info" data-content="{{ $action }}">
										<span class="fa fa-question-circle"></span>
									</button>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-label" for="i_action">Group ID</label>
								<div class="col-md-8">
									<input type="text" class="form-control input-sm" id="i_group_id" name="group_id" placeholder="Enter the Group ID" required>
								</div>
								<div class="col-md-1">
									<button type="button" class="btn btn-warning btn-sm" data-container="body" data-toggle="popover" title="Info" data-content="{{ $group_id }}">
										<span class="fa fa-question-circle"></span>
									</button>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-label" for="i_barcode_id">Barcode ID</label>
								<div class="col-md-8">
									<input type="text" class="form-control input-sm" id="i_barcode_id" name="barcode_id" placeholder="Enter the Barcode ID" required>
								</div>
								<div class="col-md-1">
									<button type="button" class="btn btn-warning btn-sm" data-container="body" data-toggle="popover" title="Info" data-content="{{ $barcode_id }}">
										<span class="fa fa-question-circle"></span>
									</button>
								</div>
							</div>
						</div>
						
						
						
						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-label" for="i_split_num">Split Codes Amount</label>
							
								<div class="col-md-8">
									<input type="text" class="form-control input-sm" id="i_split_num" name="split_num" placeholder="Enter Number of codes to split between files">
								</div>
								<div class="col-md-1">
									<button type="button" class="btn btn-warning btn-sm" data-container="body" data-toggle="popover" title="Info" data-content="{{ $split_num }}">
										<span class="fa fa-question-circle"></span>
									</button>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-label" for="i_total">Total Codes</label>
							
								<div class="col-md-8">
									<input type="text" class="form-control input-sm" id="i_total" name="total" placeholder="Enter Total Number of Codes to Generate">
								</div>
								<div class="col-md-1">
									<button type="button" class="btn btn-warning btn-sm" data-container="body" data-toggle="popover" title="Info" data-content="{{ $total }}">
										<span class="fa fa-question-circle"></span>
									</button>
								</div>
							</div>
						</div>
					      </div>
						<div class="modal-footer">
							<div class="form-group">
									<button type="submit" class="btn btn-primary">Generate Files</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			</form>


            
        </div>
        <script id="template-barcode-generator" type="text/template">
	        <div id="modal-barcode-generator" class="modal fade" tabindex="-1" role="dialog">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title">Barcode Generator</h4>
			      </div>
			      <form>
			      <div class="modal-body">
				
			      </div>
			      </form>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
			        <button type="button" class="btn btn-primary">Generate Files</button>
			      </div>
			    </div>
			  </div>
			</div>
	    </script>
    </body>
</html>
