<div style="width:80%; margin:0 auto">
<h3>Time to let us know you more Ninja, enter your details.</h3>
<p>Hello Ninja, submit your details here &amp; it would be updated in our database. You can re-submit data to update later as well.</p>
<p class="message {if $error }error{/if}">{$message}</p>
<form action="" method=POST>
<table style="text-align:left; width: 100%">
	<tr><td>Email</td><td><input name="Email" value="{$data.Email}"/></td></tr>
	<tr class="message"><td colspan="2">This is the email you sent to us in the questionnaire. If you want to change email, write to us at admin@stalkninja.com</td></tr>
	<tr><td>Username you would like to have</td><td><input name="UserName" value="{$data.UserName}"/></td></tr>
	<tr class="message"><td colspan="2">Do not enter space &amp; special characters although we dont check for it now</td></tr>
	<tr><td>Name</td><td><input name="Name" value="{$data.Name}"/></td></tr>
	<tr><td>Phone</td><td><input name="Phone" value="{$data.Phone}"/></td></tr>
	<tr><td>Heading</td><td><input name="Heading" value="{$data.Heading}"/></td></tr>
	<tr class="message"><td colspan="2">This would be displayed on your ninja profile page on the top</td></tr>
	<tr><td>Facebook UID</td><td><input name="FacebookId" value="{$data.FacebookId}"/></td></tr>
	<tr class="message"><td colspan="2">Remember the facebook page challenge you did :). This would be used to show your pic on your profile page. Eg. Ashish UID is 100000642976729</td></tr>
	<tr><td>Facebook profile pic url</td><td><input name="FacebookPicUrl" value="{$data.FacebookPicUrl}"/></td></tr>
	<tr class="message"><td colspan="2">Go to your home page & then view your profile pic on a separate tab. Eg. Ashish's profile pic url is <a target="_blank" href="http://profile.ak.fbcdn.net/hprofile-ak-snc4/70601_100000642976729_7032846_n.jpg">http://profile.ak.fbcdn.net/hprofile-ak-snc4/70601_100000642976729_7032846_n.jpg</a></td></tr>
	<tr><td>About You</td><td><textarea name="Description">{$data.Description}</textarea></td></tr>
	<tr class="message"><td colspan="2">This would be shown as your description on your ninja page. You can use html tags to make it jazzy</td></tr>
	<tr><td>Skills you have</td><td><input name="Skills" value="{$data.Skills}"/></td></tr>
	<tr><td>Date you solved the challenge (YYYY-MM-DD format)</td><td><input name="RegisteredOn" value="{$data.RegisteredOn}"/></td></tr>
	<tr><td colspan="2"><input type="submit" value="Submit"/></td></tr>
</table>
</form>
</div>
<style type="text/css">
{literal}
	tr:hover {
		background-color: #EFEFEF;
	}
	td:first-child {
		width: 30%;
		font-weight: bold;
	}
	input {
		width: 100%;
	}
	.message {
		margin-top: 0px;
		padding-top: 0px;
		font-size: small;
	}
	.message, .message td{
		border: 0;
	}
	.error {
		color: red;
		font-weight: bold;
	}
	textarea {
		width: 100%;
		height: 300px;
	}
{/literal}
</style>
