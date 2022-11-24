<head>
    <link rel="stylesheet" href="<?php echo base_url('aset/pdf/bootstrap.css'); ?>">
    

    <!-- Bootstrap PDF Viewer -->
   
    <link rel="stylesheet" href="<?php echo base_url('aset/pdf/bootstrap-pdf-viewer.css'); ?>">
  </head>
<body>
	
	      <!-- Bootstrap PDF Viewer -->

	<?php  foreach ($datapdf as $result) { ?>
		<div id="viewer" class="pdf-viewer" data-url="<?php echo base_url($result->file_buku); ?>"></div>
	<?php } ?>  
    

    <!-- jQuery -->
    <script src="<?php echo base_url('aset/pdf/jquery-1.9.1.js'); ?>"></script>

    <!-- Twitter Bootstrap -->
    <script src="<?php echo base_url('aset/pdf/bootstrap.js'); ?>"></script>


    <!-- Bootstrap PDF Viewer -->
   
    <script src="<?php echo base_url('aset/pdf/pdf.js'); ?>"></script>
  
    <script src="<?php echo base_url('aset/pdf/bootstrap-pdf-viewer.js'); ?>"></script>

    <script>
      var viewer;

      $(function() {
        viewer = new PDFViewer($('#viewer'));
      });
    </script>
    <script> document.onkeydown = function(e) {
            if (e.ctrlKey && ( e.keyCode === 85 )) {
                alert('Maaf Akses Terbatas');
            }
            return false;
    };
    </script>
  
   <script> var message="Maaf Akses Terbatas";
///////////////////////////////////
function clickIE4(){
  if (event.button==2){alert(message);return false;}} 
  function clickNS4(e){if (document.layers||document.getElementById&&!document.all)
            {
              if (e.which==2||e.which==3){alert(message);return false;}}} 
              if (document.layers){document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS4;} 
              else if (document.all&&!document.getElementById){document.onmousedown=clickIE4;} document.oncontextmenu=new 
              Function("alert(message);return false")
              </script> 
<script>
function(e) {
if(event.keyCode == 123) {
return false;
}
if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){
return false;
}
if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){
return false;
}
if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){
return false;
}
}
if(e.ctrlKey && e.keyCode == 'UU'.charCodeAt(0)){
return false;
}
}
</script>
  

</body>