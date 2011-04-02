<?php /* Smarty version 2.6.26, created on 2011-02-11 21:52:02
         compiled from ninja-list.tpl */ ?>

<br/>
	<div class="contents">
            <h3 style="margin-top: 5px;">List of Ninja's available to be engaged.</h3>

		<div  id="ninja-container">
			<?php $_from = $this->_tpl_vars['ninjas']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['n']):
?>
			<div class="btn completed" style="text-align:center; margin-bottom: 5px;">
				
				<table style="width:100%; font-size: medium">
					<tr>
                                            <td style="width: 100px; padding-left: 25px;"><img src="<?php echo $this->_tpl_vars['n']['FacebookPicUrl']; ?>
" width="75px" height="75px"></img></td>
						<td style="width: 700px;"><?php echo $this->_tpl_vars['n']['Name']; ?>
: &nbsp; <?php echo $this->_tpl_vars['n']['Heading']; ?>
</td>
                                                <td><a href="ninja.php?id=<?php echo $this->_tpl_vars['n']['Id']; ?>
"><div class="btn open" style="text-align:center; width: 145px; padding-right: 25px;">Visit Ninja Profile</div></a></td>
                                                
                                        </tr>
                                </table>
                                <table>
					<tr>
						<td>
							 <table>
								<tr>
                                                                        <td>Total Project(s) Count:</td>
									<td>Rating: <?php echo $this->_tpl_vars['n']['Rating']; ?>
</td>
									<td>Registered on: <?php echo $this->_tpl_vars['n']['RegisteredOn']; ?>
</td>
									
								</tr>
                                                         </table>
						</td>
					</tr>
				</table>
				
			</div>
			<?php endforeach; endif; unset($_from); ?>

			
		</div>
        
 	</div><!-- /.contents -->

                    