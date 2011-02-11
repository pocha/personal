
<br/>
	<div class="contents">
            <h3 style="margin-top: 5px;">List of Ninja's available to be engaged.</h3>

		<div  id="ninja-container">
			{foreach from=$ninjas item=n}
			<div class="btn completed" style="text-align:center; margin-bottom: 5px;">
				
				<table style="width:100%; font-size: medium">
					<tr>
                                            <td style="width: 100px; padding-left: 25px;"><img src="{$n.FacebookPicUrl}" width="75px" height="75px"></img></td>
						<td style="width: 700px;">{$n.Name}: &nbsp; {$n.Heading}</td>
                                                <td><a href="ninja.php?id={$n.Id}"><div class="btn open" style="text-align:center; width: 145px; padding-right: 25px;">Visit Ninja Profile</div></a></td>
                                                
                                        </tr>
                                </table>
                                <table>
					<tr>
						<td>
							 <table>
								<tr>
                                                                        <td>Total Project(s) Count:</td>
									<td>Rating: {$n.Rating}</td>
									<td>Registered on: {$n.RegisteredOn}</td>
									
								</tr>
                                                         </table>
						</td>
					</tr>
				</table>
				
			</div>
			{/foreach}

			
		</div>
        
 	</div><!-- /.contents -->

                    