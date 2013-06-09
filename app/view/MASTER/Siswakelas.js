Ext.define('SDIT.view.MASTER.Siswakelas', {
    extend: 'Ext.form.Panel',
    
    title: '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Siswakelas',
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
                siswakelas_id : 0,
				kelas_nama: '',
                siswakelas_thnpelajaran : default_value_thnpelajaran,
				siswa_nama: ''
            };
            rowEditor.cancelEdit();
            grid.getStore().insert(0, default_data);
            grid.getSelectionModel().getSelection()[0];
            rowEditor.startEdit(0, 0);
        };
        
        var delete_grid = function(dataview, selections){
            var selection = grid.getSelectionModel().getSelection()[0];
            if(selection){
                Ext.Msg.confirm('Confirmation', 'Are you sure to delete this data: Nama Siswakelas = \"'+selection.data.siswakelas_nama+'\"?', function(btn){
                    if (btn == 'yes'){
                        grid.down('#btndelete').setDisabled(true);
                        
                        grid.getStore().remove(selection);
                        grid.getStore().sync();
                    }
                });
                
            }
        };
        
        var gridSelection = function(me, record, item, index, e, eOpts){
            grid.selectedIndex = index;
            grid.getView().saveScrollState();
        };
        
        var refreshSelection = function() {
            grid.getSelectionModel().select(grid.selectedIndex);
        };
		
		var get_thn_pelajaran = function(){
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
			
			return default_value_thnpelajaran;
		};
        /* FUNCTION end */
        
		/* STORE start */
        var store = Ext.create('Ext.data.Store', {
            storeId:'siswakelasStore',
            fields:['siswakelas_id',
                    'kelas_id',
					'kelas_tingkat',
					'kelas_nama',
					'kelas_tingkatnama',
					'siswakelas_thnpelajaran',
					'siswa_id',
					'siswa_nama',
					'siswa_nisnama',
                    'siswakelas_created_date',
                    'siswakelas_created_by',
                    'siswakelas_updated_date',
                    'siswakelas_updated_by',
                    'siswakelas_revised'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_siswakelas/getAll',
                    create	: base_url+'index.php/c_siswakelas/save',
                    update	: base_url+'index.php/c_siswakelas/save',
                    destroy	: base_url+'index.php/c_siswakelas/delete'
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
		
		var kelasStore = Ext.create('Ext.data.Store', {
            storeId:'kelasStore',
            fields:['kelas_id',
					'kelas_tingkat',
					'kelas_nama',
					'kelas_tingkatnama'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_siswakelas/getAllKelas'
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
            autoLoad: false
        });
		
		var siswaStore = Ext.create('Ext.data.Store', {
            storeId:'siswaStore',
            fields:['siswa_id',
					'siswa_nama',
					'siswa_nisnama'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_siswakelas/getAllSiswa'
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
            autoLoad: false
        });
		/* STORE end */
        
        /* GRID start */
		var thn_pelajaran_filterField = Ext.create('Ext.form.field.Text', {
			fieldLabel: '<b>Tahun Pelajaran</b>',
			labelWidth: 100,
			width: 200,
			allowBlank: false
		});
		var kelas_filterField = Ext.create('Ext.form.field.ComboBox', {
			fieldLabel: '<b>Kelas</b>',
			labelWidth: 40,
			store: kelasStore,
			queryMode: 'local',
			displayField:'kelas_tingkatnama',
			valueField: 'kelas_id',
	        typeAhead: false,
	        loadingText: 'Searching...',
	        hideTrigger:false,
			allowBlank: false,
	        itemSelector: 'div.search-item',
			triggerAction: 'all',
			lazyRender:true,
			listClass: 'x-combo-list-small',
			width: 360,
			forceSelection:true,
			listeners: {
				change: function(me, newValue, oldValue){
					store.proxy.extraParams.kelas = newValue;
					store.proxy.extraParams.thn_pelajaran = thn_pelajaran_filterField.getValue();
					store.load();
				}
			}
		});
		
        var rowEditor = Ext.create('Ext.grid.plugin.RowEditing', {
            clicksToEdit: 2,
            clicksToMoveEditor: 1,
			listeners: {
				'beforeedit': function(editor, e){
					/* to do => before editing is active */
				},
				'canceledit': function(editor, e){
					/* to do => row editing is cancel */
                    if((/^\s*$/).test(e.record.data.kelas_tingkatnama) || (/^\s*$/).test(e.record.data.siswakelas_thnpelajaran) || e.record.data.siswakelas_id == 0 ){
						editor.cancelEdit();
						var sm = e.grid.getSelectionModel();
						e.store.remove(sm.getSelection());
                        
                        e.grid.down('#btndelete').setDisabled(!sm.getSelection().length);
					}
				},
				'validateedit': function(editor, e){
				},
				'afteredit': function(editor, e){
					if((/^\s*$/).test(e.record.data.kelas_tingkatnama) || (/^\s*$/).test(e.record.data.siswakelas_thnpelajaran) || e.record.data.siswakelas_id == 0){
						Ext.Msg.alert('Peringatan', 'Kolom "Kelas", "Tahun Pelajaran", dan "Siswa" tidak boleh kosong.');
						return false;
					}
					/* e.store.sync();
					return true; */
					var jsonData = Ext.encode(e.record.data);
					
					Ext.Ajax.request({
						method: 'POST',
						url: base_url+'index.php/c_siswakelas/save',
						params: {data: jsonData},
						success: function(response){
							e.store.reload({
								callback: function(){
									var newRecordIndex = e.store.findBy(
										function(record, id) {
											if ((record.get('siswakelas_tingkat') == e.record.data.siswakelas_tingkat) && (record.get('siswakelas_nama') === e.record.data.siswakelas_nama)) {
												return true;
											}
											return false;
										}
									);
									/* me.grid.getView().select(recordIndex); */
									grid.getSelectionModel().select(newRecordIndex);
								}
							});
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
                    text: 'siswakelas_id',
                    dataIndex: 'siswakelas_id',
                    hidden: true
                }, {
                    text: 'Kelas',
                    dataIndex: 'kelas_tingkatnama',
					width: 300,
                    editor: Ext.create('Ext.form.field.ComboBox', {
						store: kelasStore,
						queryMode: 'local',
						displayField:'kelas_tingkatnama',
						valueField: 'kelas_id',
						typeAhead: false,
						loadingText: 'Searching...',
						hideTrigger:false,
						allowBlank: false,
						itemSelector: 'div.search-item',
						triggerAction: 'all',
						lazyRender:true,
						listClass: 'x-combo-list-small',
						anchor:'100%',
						forceSelection:true
                    })
                }, {
                    text: 'Tahun Pelajaran',
                    dataIndex: 'siswakelas_thnpelajaran',
					width: 150,
                    editor: Ext.create('Ext.form.field.Text', {
                        allowBlank: false
                    })
                }, {
                    text: 'Siswa',
                    dataIndex: 'siswa_nisnama',
					flex: 1,
                    editor: Ext.create('Ext.form.field.ComboBox', {
						store: siswaStore,
						queryMode: 'local',
						displayField:'siswa_nisnama',
						valueField: 'siswa_id',
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
                    }, '-', thn_pelajaran_filterField, {
						xtype: 'splitter'
					}, kelas_filterField]
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
                    }
                },
				
				afterrender: function(){
					kelasStore.reload();
					siswaStore.reload();
					
					var thn_pelajaran_sekarang = get_thn_pelajaran();
					thn_pelajaran_filterField.setValue(thn_pelajaran_sekarang);
				},
                
                itemclick: gridSelection
            }
        });
        grid.getView().on('refresh', refreshSelection, this);
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