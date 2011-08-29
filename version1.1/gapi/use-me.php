<style type="text/css">
	p {
		margin:0; padding:0;
	}
</style>
<div style="text-align:center">
<p style="font-size:10px; color:#999999"><img src="google.png" align="top" style="height:15px"/> Analytics</p>
<img id=loading src="loading.gif" style="height:25px;"/>
<p><iframe id='iframe' src="iframe.php?url=<?php echo $_GET['url']; ?>" frameborder=0 height="25" width=100  onload="hideloading(this)" style="display:none;font-size:40px"></iframe></p>
<p style="color:#999999;font-size:13px;">Unique Visits</p>
</div>
<script type="text/javascript">
	function hideloading() {
		document.getElementById('loading').style.display = "none";
		document.getElementById('iframe').style.display = "inline";
	}
</script>
