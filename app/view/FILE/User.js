Ext.define('SDIT.view.FILE.User', {
    extend: 'Ext.form.Panel',
    
    title: '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User',
    layout: 'border',
    hideMode: Ext.isIE ? 'offsets' : 'display',
    overflowY: 'auto',
    
    initComponent: function(){
        /* FUNCTION start */
        var add_grid = function(){
			var date_now = new Date();
			var bln_sekarang = date_now.getMonth()+1;
			var thn_sekarang = date_now.getFullYear();
			var prev_thn = thn_sekarang - 1;
			var next_thn = thn_sekarang + 1;
			
			var default_value_thnpelajaran = "";
			if (bln_sekarang > 6) {
				default_value_thnpelajaran = thn_sekarang+"/"+next_thn;
			}else{
				default_value_thnpelajaran = prev_thn+"/"+thn_sekarang;
			}
			
            var default_data = {
                user_id : 0,
				user_password: '',
            };
            rowEditor.cancelEdit();
            grid.getStore().insert(0, default_data);
            grid.getSelectionModel().getSelection()[0];
            rowEditor.startEdit(0, 0);
        };
        
        var delete_grid = function(dataview, selections){
            var selection = grid.getSelectionModel().getSelection()[0];
            if(selection){
                Ext.Msg.confirm('Confirmation', 'Are you sure to delete this data: Login = \"'+selection.data.guru_nama+'\"?', function(btn){
                    if (btn == 'yes'){
                        grid.down('#btndelete').setDisabled(true);
                        
                        grid.getStore().remove(selection);
                        grid.getStore().sync();
                    }
                });
                
            }
        };
        /* FUNCTION end */
        
		/* STORE start */
        var store = Ext.create('Ext.data.Store', {
            storeId:'store',
            fields:['user_id',
                    'user_name',
					'user_password',
					'user_guru',
                    'guru_id',
                    'guru_nama',
					'user_aktif'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php?c=c_user&m=getAll',
                    create	: base_url+'index.php?c=c_user&m=save',
                    update	: base_url+'index.php?c=c_user&m=save',
                    destroy	: base_url+'index.php?c=c_user&m=delete'
                },
                actionMethods: {
                    read    : 'POST',
                    create	: 'POST',
                    update	: 'POST',
                    destroy	: 'POST'
                },
                reader: {
                    type            : 'json',
                    root            : 'data',
                    rootProperty    : 'data',
                    successProperty : 'success',
                    messageProperty : 'message'
                },
                writer: {
                    type            : 'json',
                    writeAllFields  : true,
                    root            : 'data',
                    encode          : true
                },
                listeners: {
                    exception: function(proxy, response, operation){
                        Ext.MessageBox.show({
                            title: 'REMOTE EXCEPTION',
                            msg: operation.getError(),
                            icon: Ext.MessageBox.ERROR,
                            buttons: Ext.Msg.OK
                        });
                    }
                }
            },
            pageSize: 20,
            autoLoad: true
        });
		
		var guruStore = Ext.create('Ext.data.Store', {
            storeId:'guruStore',
            fields:['guru_id',
					'guru_nama'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php?c=c_user&m=getAllGuru'
                },
                actionMethods: {
                    read    : 'POST'
                },
                reader: {
                    type            : 'json',
                    root            : 'data',
                    rootProperty    : 'data',
                    successProperty : 'success',
                    messageProperty : 'message'
                },
                listeners: {
                    exception: function(proxy, response, operation){
                        Ext.MessageBox.show({
                            title: 'REMOTE EXCEPTION',
                            msg: operation.getError(),
                            icon: Ext.MessageBox.ERROR,
                            buttons: Ext.Msg.OK
                        });
                    }
                }
            },
            autoLoad: true
        });
		/* STORE end */
        
        /* GRID start */
        var usernameField = Ext.create('Ext.form.field.Text');
		
        var rowEditor = Ext.create('Ext.grid.plugin.RowEditing', {
            clicksToEdit: 2,
            clicksToMoveEditor: 1,
			listeners: {
				'beforeedit': function(editor, e){
					/* to do => before editing is active */
                    if((e.record.data.user_name != '') || (e.record.data.user_name != 0)){
                        usernameField.setReadOnly(true);
                        e.record.data.user_password = '';
					}
				},
				'canceledit': function(editor, e){
					/* to do => row editing is cancel */
                    if((/^\s*$/).test(e.record.data.user_name)
                       || (/^\s*$/).test(e.record.data.user_password)
                       || typeof e.record.data.guru_nama === 'undefined' || ! e.record.data.guru_nama ){
						editor.cancelEdit();
						var sm = e.grid.getSelectionModel();
						e.store.remove(sm.getSelection());
                        
                        e.grid.down('#btndelete').setDisabled(!sm.getSelection().length);
					}
				},
				'validateedit': function(editor, e){
				},
				'afteredit': function(editor, e){
					if((/^\s*$/).test(e.record.data.user_name)
                       || (/^\s*$/).test(e.record.data.user_password)
                       || typeof e.record.data.guru_nama === 'undefined' || ! e.record.data.guru_nama){
						Ext.Msg.alert('Peringatan', 'User Name "Password", dan "Guru" tidak boleh kosong.');
						return false;
					}
					/* e.store.sync();
					return true; */
					var jsonData = Ext.encode(e.record.data);
					
					Ext.Ajax.request({
						method: 'POST',
						url: base_url+'index.php?c=c_user&m=save',
						params: {data: jsonData},
						success: function(response){
                            e.store.reload();
							return true;
						}
					});
					return true;
				}
			}
        });
        var grid = Ext.create('Ext.grid.Panel', {
            title: 'Grid',
            store: store,
            plugins: [rowEditor],
            selectedIndex: -1,
            selModel: Ext.selection.Model(),
            columns: [
                {
                    text: 'user_id',
                    dataIndex: 'user_id',
                    hidden: true
                }, 
                { header: 'User Name', dataIndex: 'user_name', field: usernameField },
                { header: 'Password', dataIndex: 'user_password', width: 300, editor: {xtype: 'textfield'} },
                {
                    text: 'Guru',
                    dataIndex: 'guru_nama',
					flex: 1,
                    editor: Ext.create('Ext.form.field.ComboBox', {
						store: guruStore,
						queryMode: 'local',
						displayField:'guru_nama',
						valueField: 'guru_id',
						typeAhead: false,
						loadingText: 'Searching...',
						hideTrigger:false,
						allowBlank: false,
						itemSelector: 'div.search-item',
						triggerAction: 'query',
						lazyRender:true,
						listClass: 'x-combo-list-small',
						anchor:'100%',
						forceSelection:true
                    })
                }
            ],
            dockedItems: [
                {
                    xtype: 'toolbar',
                    frame: true,
                    items: [{
                        text	: 'Add',
                        iconCls	: 'icon-add',
                        handler : add_grid
                    }, {
                        itemId	: 'btndelete',
                        text	: 'Delete',
                        iconCls	: 'icon-remove',
                        disabled: true,
                        handler : delete_grid
                    }]
                },
                {
                    xtype: 'pagingtoolbar',
                    store: store,
                    dock: 'bottom',
                    displayInfo: true
                }
            ],
            
            listeners: {
                selectionchange: function(dataview, selections){
                    if(selections.length){
                        console.log('enable delete');
                        this.down('#btndelete').setDisabled(!selections.length);
                    }else{
                        this.down('#btndelete').setDisabled(!selections.length);
                    }
                },
                
                afterrenderer: function(){
                    guruStore.reload();
                }
            }
        });
        /* GRID end */
        
        var tabs = Ext.create('Ext.tab.Panel', {
            region: 'center',
            
            margins: 0,
            tabPosition: 'left',
            activeTab: 0,
            items: [grid]
        });
        
        Ext.apply(this, {
            items: [tabs]
        });
        
        this.callParent();
    }
});