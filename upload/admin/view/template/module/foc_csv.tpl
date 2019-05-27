<?php echo $header; ?>

<div id="content">


  <ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) : ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
  <?php endforeach; ?>

  <div class="box">
    <div class="heading">
      <h1><?php echo $heading_title; ?></h1>
    </div>

    <div class="content">
      <div id="foc_csv">
        <div class="container">
          <div class="panel panel-default">
            <div class="panel-content">
              <h3><?php echo $foc_app_preload_title; ?></h3>
              <p><?php echo $foc_app_preload_description; ?></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
// Frontend app settings
window.FOC_CSV_PARAMS = {
  'requestConfig' : {
    'token': '<?php echo $token; ?>',
    'tokenName': '<?php echo $tokenName; ?>',
    'baseRoute': '<?php echo $baseRoute; ?>',
    'baseUrl': '<?php echo $baseUrl; ?>',
  },
  'appName' : '<?php echo $heading_title; ?>',
  'appVersion' : '<?php echo $foc_version; ?>',
  'language': '<?php echo $language; ?>',
  'initial' : <?php echo $initial; ?>
};
</script>

<?php foreach ($scripts as $script) : ?>
  <script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php endforeach; ?>

<?php echo $footer; ?>