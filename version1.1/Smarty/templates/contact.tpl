<link rel="stylesheet" href="/css/main.css" type="text/css" media="all">
<style type="text/css">
{literal}
	body {
		min-width: 500px !important;
	}
	span {
		color: #ABABAB;
		font-style: italic;
	}
{/literal}
</style>
<div style="width:500px; margin: 0 auto;">

	{if $error }
		<p class="error" style="font-size:1em">{$error}</p>
	{/if}
	{if $submission eq 1 }
		<p style="margin-top:2em; font-size: 1.5em;">An email is being sent to the founders & a copy to you. They should revert within 24 hours.</p>
		<p style="font-size:small">If it is too urgent, feel free to call Ashish at +91 95 3838 4545</p>
	{else}

	<div style="text-align:left; font-size: small;">
	<form  action="" method=POST>
		<p>Name<br/><input name="Name" value="{$data.Name}"/></p>
		<p>Email<br/><input name="Email" value="{$data.Email}"/><br/><span>We do not store your email.</span></p>
		<p>Message<br/><textarea style="width:400px;height:100px;" name="Message">{$data.Message}</textarea></p>
		<input type="submit" value="Submit"/>
	</form>
	</div>
	{/if}
</div>
