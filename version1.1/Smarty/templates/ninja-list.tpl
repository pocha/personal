
<br/>
	<div class="contents">
            <h3 style="margin-top: 5px;">List of Ninja's available to be engaged.</h3>

		<div  id="ninja-container">
			{foreach from=$ninjas item=n}
			<div style="text-align:center; margin-bottom: 5px; border: 1px solid black; padding: 5px;">
				
				<table style="width:100%; font-size: medium">
					<tr style="text-align:left">
                                            <td style="width: 100px; padding-left: 25px;"><img src="{if $n.FacebookPicUrl}{$n.FacebookPicUrl}{else}img/ninja-image.jpg{/if}" width="75px" height="75px"></img><p style="font-size:small">{$n.Name}</td>
						<td style="width: 700px;">{if $n.Description}{$n.Description}{else}The Ninja has not given any description yet{/if}</td>
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

                    
