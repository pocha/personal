
<br/>
	<div class="contents">
            <h3 style="margin-top: 5px;">Total {$ninjas|@count} Ninja's available to be engaged.</h3>
						<p style="text-align:center">Click on the Ninja picture to check his/her facebook profile</p>
						<p class="message" style="text-align:center">Formula for rank calculation - Total points = avg project budget * (avg rating x completed project + avg rating x live project + attempted projects)</p>

		<div  id="ninja-container">
			{foreach from=$ninjas item=n name=ninjas}
			<div style="text-align:center; margin-bottom: 5px; border: 1px solid black; padding: 5px;">
				<h3>Stalk Ninja Rank - {$n.Rank} ({$n.Points|number_format:0:".":","} points)</h3>
				
				<table style="width:100%; font-size: small">
					<tr style="text-align:left">
              <td style="width: 100px; padding-left: 25px;">{if $n.FacebookProfileUrl}<a target="_blank" href="{$n.FacebookProfileUrl}">{/if}<img src="{if $n.FacebookPicUrl}{$n.FacebookPicUrl}{else}img/ninja-image.jpg{/if}" width="100px"></img><p style="font-size:small; color:black;">{$n.Name}</p>{if $n.FacebookProfileUrl}</a>{/if}<br/><a href="/ninja/{$n.Id}"><div class="btn open" style="text-align:center; width: 145px; padding-right: 25px;">Visit Ninja Profile</div></a></td>
						<td style="width: 700px;">
							<table>
								<tr>
									<td>{if $n.Description}{$n.Description}{else}The Ninja has not given any description yet{/if}</td>
								</tr>
								<tr>
									<td><span style="color:black">Skills : {$n.Skills}</span></td>
								</tr>
							</table>
							</td>
                                                
                                        </tr>
                                </table>
                                <table>
					<tr>
						<td>
							 <table>
								<tr>
                  <td>{if $n.Rating}Rated {$n.Rating} in {$n.completedProjectCount} project(s){else}No visible rating yet{/if}</td>
									<td>Projects attempted: {$n.attemptedProjectCount}</td>
									<td>Live projects: {$n.liveProjectCount}</td>
									
								</tr>
                                                         </table>
						</td>
					</tr>
				</table>
				
			</div>
			{/foreach}

			
		</div>
        
 	</div><!-- /.contents -->

                    
