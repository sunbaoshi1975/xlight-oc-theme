<?php echo $header; ?>
<div class="container">
  <header>
    <div class="row">
      <div class="col-sm-12"><img src="view/image/logo.png" alt="OpenCart" title="OpenCart" /></div>
    </div>
  </header>
  <h1>Install octheme</h1>
  <p><span style="color: #FF0000"><b>Please backup your database before install!</b></span></p>
  <div class="row">
    <div class="col-sm-9">
      <?php if ($error_warning) { ?>
      <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <fieldset>
          <p><b>Follow these steps carefully!</b></p>
          <ol>
            <li><span style="color: #FF0000">After install octheme - Goto Admin and Edit the main System Settings. Update all fields and click save</span></li>
            <li><span style="color: #FF6699">Goto Admin -> Extensions -> Modifications - Check All boxes - Click Refresh button.</span></li>
            <li>Load the admin page & press Ctrl+F5 twice to force the browser to update the css changes.</li>
            <li>Goto Admin -> Users -> User Groups and Edit the Top Adminstrator group. Check All boxes.</li>
            <li>Load the store front & press Ctrl+F5 twice to force the browser to update the css changes.</li>
          </ol>
        </fieldset>
        <div class="buttons">
          <div class="text-right">
            <input type="submit" value="Install" class="button" />
          </div>
        </div>
      </form>
    </div>
    <div class="col-sm-3">
      <ul class="list-group">
        <li class="list-group-item"><b>Install</b></li>
        <li class="list-group-item">Finished</li>
      </ul>
    </div>
  </div>
</div>
<?php echo $footer; ?>