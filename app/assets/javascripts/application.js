// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  var changiLogo = $('#changi-logo');
  var video = $('#video-on-left-wall');
  var tableOnWall = document.getElementsByClassName('table-on-wall');
  var item = $('#item-on-wall-table');
  var metaVerse = $('#meta-verse');
  var scene = metaVerse[0].controller.gameObject.scene;
  changiLogo[0].controller.metaObject.group.position.z = changiLogo[0].controller.properties.length / 2;
  video[0].controller.metaObject.group.position.z = 2;
  for (var i = 0; i < tableOnWall.length; i++) {
    tableOnWall[i].controller.metaObject.group.position.z = 2
  }
  item[0].controller.metaObject.group.position.z = 4;
  var urlPrefix = "assets/img/betterskybox_";
   var directions  = [ "zneg", "zpos", "ypos", "yneg", "xpos", "xneg"];
  var imageSuffix = ".png";
  var skyGeometry = new THREE.BoxGeometry( 5000, 5000, 5000 );
  var materialArray = [];
  for (var i = 0; i < 6; i++){
    materialArray.push( new THREE.MeshBasicMaterial({
      map: THREE.ImageUtils.loadTexture( urlPrefix + directions[i] + imageSuffix ),
      side: THREE.BackSide
    }));
  }
  var skyMaterial = new THREE.MeshFaceMaterial( materialArray );
  var skyBox = new THREE.Mesh( skyGeometry, skyMaterial );
  scene.add( skyBox );
});
