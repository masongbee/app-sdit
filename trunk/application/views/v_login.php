<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8">
	<title>Welcome to SDIT</title>
	
	<script type="text/javascript">
		var base_url = '<?php print base_url();?>';
	</script>
	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/ext/resources/css/ext-all-neptune.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/style_custom.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/icons.css">
	
	<script type="text/javascript" src="<?php echo base_url();?>assets/ext/ext-all-debug.js"></script>
	<!--<script type="text/javascript" src="<;?php echo base_url();?>all-classes.js"></script>-->
	<script type="text/javascript" src="<?php echo base_url();?>assets/ext/ext-theme-neptune.js"></script>
	
	<script type="text/javascript">
		Ext.require([
			'Ext.form.*',
			'Ext.Img',
			'Ext.tip.QuickTipManager'
		]);
		
		Ext.apply(Ext.form.VTypes, {
			password : function(val, field) {
				if (field.initialPassField) {
					var login = Ext.getCmp(field.initialPassField);
					return (val == login.getValue());
				}
				return true;
			},
			passwordText : 'Password tidak sama'
		});
		
		var usernameField="";
		var passwordField="";
		var warningField="";
		var WAIT_TITLE="Mohon tunggu...";
		var WAIT_MESSAGE="Verifikasi...";
		var FAILED_LOGIN="Username atau password tidak sesuai!";
		var FAILED_CONNECTION="Koneksi ke Server gagal, hubungi Administrator";
		var WELCOME_MESSAGE="<center>Halaman Login</center>";
		var INFO_FULLSCREEN="<center><br/>Tekan tombol <b>F11</b> untuk tampilan full screen<br/></center>";
		
		Ext.onReady(function(){
			Ext.QuickTips.init();
			
			function authenticate(oGrid_event){
						loginForm.getForm().submit({
							method:'POST',
							waitTitle: WAIT_TITLE,
							waitMsg: WAIT_MESSAGE,
							success:function(){
								console.log('sukses login');
								var redirect = 'index.php?c=welcome';
								window.location = redirect;
							},
							failure:function(form, action){
								obj = Ext.JSON.decode(action.response.responseText);
								if(action.failureType == 'server'){
									Ext.Msg.alert('Server Failed', FAILED_CONNECTION+': ' + obj.msg);
								} else {
									Ext.Msg.alert('Login Failed', FAILED_LOGIN );
								}
							}
						});
			}
			
		
			
			var usernameField=new Ext.form.TextField({
				fieldLabel:'Username',
				name:'username',
				anchor: '95%',
				allowBlank:false
			});
			
			
			var passwordField=new Ext.form.TextField({
					fieldLabel:'Password',
					name:'password',
					anchor: '95%',
					inputType:'password',
					id: 'pass',
					enableKeyEvents: true,
					allowBlank:false,
					listeners: {
						specialkey: function(field, e){
							if (e.getKey() == e.ENTER) {
								authenticate();
							}
						}
					}
		
			});
			
			var warningField=new Ext.form.Label({
					html: '<font color=red>Aplikasi ini dapat berjalan dengan baik di atas browser minimal <a href=\'http://www.mozilla.com\' target=\'_blank\'>Mozilla Firefox 2</a> atau Internet Explorer 7, dengan resolusi terbaik 1024x768 pixel</font>'
			});
			
			var loginForm = Ext.widget('form', {
				url:'index.php/c_login/verify',
				frame: false,
				width: 330,
				bodyPadding: 5,
				bodyBorder: false,
		
				defaults: {
					anchor: '100%'
				},
				fieldDefaults: {
					labelWidth: 75,
					labelAlign: 'left',
					msgTarget: 'none',
					invalidCls: '' //unset the invalidCls so individual fields do not get styled as invalid
				},
		
				items: [usernameField, passwordField],
		
				buttonAlign: 'center',
				buttons:[{
					text:'Login',
					handler: authenticate
				},{
					text: 'Reset',
					handler: function(){
						loginForm.getForm().reset();
					}
				}]
			});
			
			Ext.create('Ext.window.Window', {
				title: WELCOME_MESSAGE,
				frame:true,
				width:330,
				autoHeight: true,
				closable: false,
				items: [loginForm]
			}).show();
		});

	</script>
	
</head>
<body></body>
</html>