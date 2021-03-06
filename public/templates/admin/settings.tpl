<h1><i class="fa fa-cogs"></i> Settings</h1>
<hr />

<ul id="settings-tab" class="nav nav-tabs">
	<li class="active"><a href="#general" data-toggle="tab">General</a></li>
	<li><a href="#privilege-thresholds" data-toggle="tab">Privilege Thresholds</a></li>
	<li><a href="#email" data-toggle="tab">Email</a></li>
	<li><a href="#user" data-toggle="tab">User</a></li>
	<li><a href="#post" data-toggle="tab">Post</a></li>
	<li><a href="#web-crawler" data-toggle="tab">Web Crawler</a></li>
</ul>

<div class="tab-content">
	<div class="tab-pane active" id="general">
		<div class="alert alert-warning">
			<form>
				<label>Site Title</label>
				<input class="form-control" type="text" placeholder="Your Community Name" data-field="title" /><br />
				<label>Site Description</label>
				<input type="text" class="form-control" placeholder="A short description about your community" data-field="description" /><br />
				<label>Site Keywords</label>
				<input type="text" class="form-control" placeholder="Keywords describing your community, comma-seperated" data-field="keywords" /><br />
				<label>Site Logo</label>
				<input id="logoUrl" type="text" class="form-control" placeholder="Path to a logo to display on forum header" data-field="brand:logo" /><br />
				<input id="uploadLogoBtn" type="button" class="btn btn-default" value="Upload Logo"></input> <br /> <br/>
				<label>Imgur Client ID</label>
				<input type="text" class="form-control" placeholder="Imgur ClientID for image uploads" data-field="imgurClientID" /><br />
				<label>Favicon</label><br />
				<input id="faviconUrl" type="text" class="form-control" placeholder="favicon.ico" data-field="brand:favicon" /><br />
				<input id="uploadFaviconBtn" type="button" class="btn btn-default" value="Upload Favicon"></input> <br />
			</form>
		</div>
	</div>

	<div class="tab-pane" id="privilege-thresholds">
		<form>
			<div class="alert alert-warning">
				<p>Use <strong>privilege thresholds</strong> to manage how much reputation a user must gain to receive moderator access.</p><br />
				<strong>Manage Thread</strong><br /> <input type="text" class="form-control" value="1000" data-field="privileges:manage_topic"><br />
				<strong>Manage Content</strong><br /> <input type="text" class="form-control" value="1000" data-field="privileges:manage_content"><br />
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="privileges:disabled"> <strong>Disable Privilege Threshold System</strong>
					</label>
				</div>
			</div>
		</form>
	</div>
	<div class="tab-pane" id="email">
		<form>
			<div class="alert alert-warning">
				<div>
					<p>
						Please ensure that you have installed a third-party emailer (e.g. PostageApp, Mailgun, Mandrill, SendGrid, etc), otherwise emails will not be sent by NodeBB
					</p>
					<p>
						<strong>Email Address</strong><br />
						The following email address refers to the email that the recipient will see in the "From" and "Reply To" fields.
					</p>
					<input type="text" class="form-control input-lg" data-field="email:from" placeholder="info@example.org" /><br />
				</div>
			</div>
		</form>
	</div>

	<div class="tab-pane" id="user">
		<form>
			<div class="alert alert-warning">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="allowRegistration" checked> <strong>Allow registration</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="disableSignatures"> <strong>Disable signatures</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="profile:convertProfileImageToPNG"> <strong>Convert profile image uploads to PNG</strong>
					</label>
				</div>
				<label>Maximum User Image File Size</label>
				<input type="text" class="form-control" placeholder="Maximum size of uploaded user images in kilobytes" data-field="maximumProfileImageSize" /><br />
				<strong>Minimum Username Length</strong><br />
				<input type="text" class="form-control" value="2" data-field="minimumUsernameLength"><br />
				<strong>Maximum Username Length</strong><br />
				<input type="text" class="form-control" value="16" data-field="maximumUsernameLength"><br />
				<strong>Minimum Password Length</strong><br />
				<input type="text" class="form-control" value="6" data-field="minimumPasswordLength"><br />
				<strong>Maximum Signature Length</strong><br />
				<input type="text" class="form-control" value="255" data-field="maximumSignatureLength"><br />
			</div>
		</form>
	</div>

	<div class="tab-pane" id="post">
		<form>
			<div class="alert alert-warning">
				<strong>Post Delay</strong><br /> <input type="text" class="form-control" value="10000" data-field="postDelay"><br />
				<strong>Minimum Title Length</strong><br /> <input type="text" class="form-control" value="3" data-field="minimumTitleLength"><br />
				<strong>Maximum Title Length</strong><br /> <input type="text" class="form-control" value="255" data-field="maximumTitleLength"><br />
				<strong>Minimum Post Length</strong><br /> <input type="text" class="form-control" value="8" data-field="minimumPostLength"><br />
				<strong>Chat Messages To Display</strong><br /> <input type="text" class="form-control" value="50" data-field="chatMessagesToDisplay"><br />
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="allowGuestPosting"> <strong>Allow guests to post without logging in</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="allowGuestSearching"> <strong>Allow guests to search without logging in</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="useOutgoingLinksPage"> <strong>Use Outgoing Links Warning Page</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="disableSocialButtons"> <strong>Disable social buttons</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-field="allowFileUploads"> <strong>Allow users to upload regular files</strong>
					</label>
				</div>
				<strong>Maximum File Size</strong><br /> <input type="text" class="form-control" value="2048" data-field="maximumFileSize"><br />
			</div>
		</form>
	</div>

	<div class="tab-pane" id="web-crawler">
		<form>
			<div class="alert alert-warning">
				<strong>Custom Robots.txt <small>Leave blank for default</small></strong><br />
				<textarea class="form-control" data-field="robots.txt"></textarea>
			</div>
		</form>
	</div>
</div>


<button class="btn btn-lg btn-primary" id="save">Save</button>

<script>
	require(['forum/admin/settings'], function(Settings) {
		Settings.prepare();
	});
</script>