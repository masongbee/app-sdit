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
				text: 'Master',
				iconCls: 'icon-database',
				menu: {
					xtype: 'menu',
					plain: true,
					items: [{
						xtype: 'buttongroup',
						title: 'Data Master',
						columns: 1,
						defaults: {
							xtype: 'button',
							scale: 'small',
							iconAlign: 'left',
							width: 190
						},
						items: [{
							text: 'Guru',
							iconCls: 'icon-teacher',
							textAlign: 'left',
							action: 'dtguru'
						},{
							text: 'Siswa',
							iconCls: 'icon-user',
							textAlign: 'left',
							action: 'dtsiswa'
						},{
							text: 'Kelas',
							iconCls: 'icon-organisation',
							textAlign: 'left',
							action: 'dtkelas'
						},{
							text: 'Siswa Kelas',
							iconCls: 'icon-vcard',
							textAlign: 'left',
							action: 'dtsiswakelas'
						},{
							text: 'Mata Pelajaran',
							iconCls: 'icon-book',
							textAlign: 'left',
							action: 'dtmapel'
						},{
							text: 'Mata Pelajaran dalam Kelas',
							iconCls: 'icon-organisation',
							textAlign: 'left',
							action: 'dtmapelkelas'
						}]
					}]
				}
			},{
				text: 'Raport',
				iconCls: 'icon-award_star',
				textAlign: 'left',
				action: 'dtraport'
			},{
				text: 'Rekap Raport',
				iconCls: 'icon-report_user',
				textAlign: 'left',
				action: 'dtrekapraport'
			} ]
		}];
		
        this.callParent();
    }
});
