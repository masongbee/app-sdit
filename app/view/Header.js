Ext.define('SDIT.view.Header', {
    extend: 'Ext.Container',
    xtype: 'appHeader',
    id: 'app-header',
    height: 72,
    layout: {
        type: 'vbox',
        align: 'stretch'
    },
    initComponent: function() {
        this.items = [{
            xtype: 'component',
            id: 'app-header-title',
            html: 'Sekolah Dasar Islam Terpadu',
			padding: 10,
            flex: 1
        },{
			xtype: 'toolbar',
			items: [{
				text: 'Users',
				iconCls: 'icon-group',
				menu: {
					xtype: 'menu',
					plain: true,
					items: {
						xtype: 'buttongroup',
						title: 'User options',
						columns: 1,
						defaults: {
							xtype: 'button',
							scale: 'small',
							iconAlign: 'left',
							width: 175
						},
						items: [{
							text: 'User Manager',
							iconCls: 'icon-group-key',
							displayText: 'User manager',
							textAlign: 'left',
							action: 'user'
						},{
							width: '100%',
							text: 'Logout',
							iconCls: 'icon-shutdown',
							textAlign: 'left',
							action: 'logout'
						}]
					}
				}
			}, {
				text: 'Data Guru',
				iconCls: 'icon-teacher',
				action: 'dtguru'
			}, {
				text: 'Data Siswa',
				iconCls: 'icon-user',
				action: 'dtsiswa'
			}]
		}];
		
        this.callParent();
    }
});
