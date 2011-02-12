
<br/>
	<div class="contents">
            <h3 style="margin-top: 5px;">Total {$ninjas|@count} Ninja's available to be engaged.</h3>
						<p style="text-align:center">Click on the Ninja picture to check his/her facebook profile</p>

		<div  id="ninja-container">
			{foreach from=$ninjas item=n}
			<div style="text-align:center; margin-bottom: 5px; border: 1px solid black; padding: 5px;">
				
				<table style="width:100%; font-size: medium">
					<tr style="text-align:left">
                                            <td style="width: 100px; padding-left: 25px;">{if $n.FacebookProfileUrl}<a target="_blank" href="{$n.FacebookProfileUrl}">{/if}<img src="{if $n.FacebookPicUrl}{$n.FacebookPicUrl}{else}img/ninja-image.jpg{/if}" width="100px"></img><p style="font-size:small; color:black;">{$n.Name}</p>{if $n.FacebookProfileUrl}</a>{/if}</td>
						<td style="width: 700px;">{if $n.Description}{$n.Description}{else}The Ninja has not given any description yet{/if}</td>
                                                <td><a href="ninja.php?id={$n.Id}"><div class="btn open" style="text-align:center; width: 145px; padding-right: 25px;">Visit Ninja Profile</div></a></td>
                                                
                                        </tr>
                                </table>
                                <table>
					<tr>
						<td>
							 <table>
								<tr>
                  <td>Total Project(s) Completed: {$n.completedProjectCount}</td>
									<td>Rating: {$n.Rating}</td>
									<td>Current Active Projects: {$n.liveProjectCount}</td>
									
								</tr>
                                                         </table>
						</td>
					</tr>
				</table>
				
			</div>
			{/foreach}

			
		</div>
        
 	</div><!-- /.contents -->

                    
