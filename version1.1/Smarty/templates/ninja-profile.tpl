<div style="max-width:1050px;">
<style type="text/css">
{literal}
	.form > tbody > tr >td:first-child {
	min-width: 300px;
}
{/literal}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	  <script type="text/javascript" src="/js/jquery.validate.js"></script>

  <script type="text/javascript">
            {literal}
    $(document).ready(function() {
				
				$("input[type='submit']").click(function() {
					tinyMCE.triggerSave();
				});

	      $("#edit_profile").validate({
	        rules: {
			 Description: {
                required: true,
                minlength: 250
                },
                
	        },
	        messages: {
			Description: {
                required: "Sorry, you can't leave this field blank",
                minlength: jQuery.format("We need at least 250 words here, be exhaustive we need to know more about you.")								
                }, 
				}
				,
	      });
	    });
            {/literal}
	  </script>


<h3>Time to let us know you more Ninja, enter your details.</h3>
<p>Hello Ninja, submit your details here &amp; it would be updated in our database. You can re-submit data to update later as well.</p>
<p class="message {if $error }error{/if}">{$message}</p>
<form id ="edit_profile" action="" method=POST>
<table class="form" style="text-align:left;">
	<tr><td>Email</td><td><input name="Email" value="{$data.Email}"/></td></tr>
	<tr class="message"><td colspan="2">This is the email you sent to us in the questionnaire. If you want to change email, write to us at admin@stalkninja.com</td></tr>
	<tr><td>Username you would like to have</td><td><input name="UserName" value="{$data.UserName}"/></td></tr>
	<tr class="message"><td colspan="2">Do not enter space &amp; special characters although we dont check for it now</td></tr>
	<tr><td>Name</td><td><input name="Name" value="{$data.Name}"/></td></tr>
	<tr><td>Phone</td><td><input name="Phone" value="{$data.Phone}"/></td></tr>
	<!--<tr><td>Heading</td><td><input name="Heading" value="{$data.Heading}"/></td></tr>
	<tr class="message"><td colspan="2">This would be displayed on your ninja profile page on the top</td></tr>
	<tr><td>Facebook UID</td><td><input name="FacebookId" value="{$data.FacebookId}"/></td></tr>
	<tr class="message"><td colspan="2">Remember the facebook page challenge you did :). This would be used to show your pic on your profile page. Eg. Ashish UID is 100000642976729</td></tr>-->
	<tr><td>Facebook Profile URL</td><td><input name="FacebookProfileUrl" value="{$data.FacebookProfileUrl}"/></td></tr>
	<tr><td>Facebook Profile Picture URL</td><td><input name="FacebookPicUrl" value="{$data.FacebookPicUrl}"/></td></tr>
	<tr class="message"><td colspan="2">Go to your facebook home, right click on the pic, say open in new tab & then copy the url of the pic here. Eg Ashish's profile pic url is <a target="_blank" href="http://profile.ak.fbcdn.net/hprofile-ak-snc4/70601_100000642976729_7032846_n.jpg">http://profile.ak.fbcdn.net/hprofile-ak-snc4/70601_100000642976729_7032846_n.jpg</a></td></tr>
	<tr><td>About You</td><td><textarea name="Description">{$data.Description}</textarea></td></tr>
	<tr class="message"><td colspan="2">This would be shown as your description on your ninja page. The more descriptive you are, the better visibility you will have</td></tr>
	<tr><td>Skills you have</td><td><input name="Skills" value="{$data.Skills}"/></td></tr>
	<tr class="message"><td colspan="2">Like HTML, Design, problem solving. Name anything you think you are good at</td></tr>
	<tr><td>Date you solved the challenge (YYYY-MM-DD format)</td><td><input name="RegisteredOn" value="{$data.RegisteredOn}"/></td></tr>
	<tr><td colspan="2"><input type="submit" value="Submit"/></td></tr>
</table>
</form>
</div>

