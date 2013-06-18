Ext.define('SDIT.view.MASTER.Mapelkelas', {
    extend: 'Ext.form.Panel',
    
    title: '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mata Pelajaran dalam Kelas',
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
                mapelkelas_id : 0,
				kelas_tingkatnama: '',
                mapelkelas_thnpelajaran : default_value_thnpelajaran,
				mapel_nama: '',
				guru_nama: ''
            };
            rowEditor.cancelEdit();
            grid.getStore().insert(0, default_data);
            grid.getSelectionModel().getSelection()[0];
            rowEditor.startEdit(0, 0);
        };
        
        var delete_grid = function(dataview, selections){
            var selection = grid.getSelectionModel().getSelection()[0];
            if(selection){
                Ext.Msg.confirm('Confirmation', 'Are you sure to delete this data: Nama Mapelkelas = \"'+selection.data.mapelkelas_nama+'\"?', function(btn){
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
		
		var isNumber = function(o){
			return ! isNaN(o-0);
		};
        /* FUNCTION end */
        
		/* STORE start */
        var store = Ext.create('Ext.data.Store', {
            storeId:'store',
            fields:['mapelkelas_id',
                    'kelas_id',
					'kelas_tingkat',
					'kelas_nama',
					'kelas_tingkatnama',
					'mapelkelas_thnpelajaran',
					'mapel_id',
					'mapel_nama',
					'guru_id',
					'guru_nama',
					'guru_niknama',
                    'mapelkelas_created_date',
                    'mapelkelas_created_by',
                    'mapelkelas_updated_date',
                    'mapelkelas_updated_by',
                    'mapelkelas_revised'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_mapelkelas/getAll',
                    create	: base_url+'index.php/c_mapelkelas/save',
                    update	: base_url+'index.php/c_mapelkelas/save',
                    destroy	: base_url+'index.php/c_mapelkelas/delete'
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
                    read    : base_url+'index.php/c_mapelkelas/getAllKelas'
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
		
		var mapelStore = Ext.create('Ext.data.Store', {
            storeId:'mapelStore',
            fields:['mapel_id',
					'mapel_nama'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_mapelkelas/getAllMapel'
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
		
		var guruStore = Ext.create('Ext.data.Store', {
            storeId:'guruStore',
            fields:['guru_id',
					'guru_nama',
					'guru_niknama'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_mapelkelas/getAllGuru'
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
                    if((/^\s*$/).test(e.record.data.kelas_tingkatnama) || (/^\s*$/).test(e.record.data.mapelkelas_thnpelajaran) || e.record.data.mapelkelas_id == 0 ){
						editor.cancelEdit();
						var sm = e.grid.getSelectionModel();
						e.store.remove(sm.getSelection());
                        
                        e.grid.down('#btndelete').setDisabled(!sm.getSelection().length);
					}
				},
				'validateedit': function(editor, e){
				},
				'afteredit': function(editor, e){
					if(typeof e.record.data.kelas_tingkatnama === 'undefined' || ! e.record.data.kelas_tingkatnama
					   || (/^\s*$/).test(e.record.data.mapelkelas_thnpelajaran)
					   || typeof e.record.data.mapel_nama === 'undefined' || ! e.record.data.mapel_nama
					   || typeof e.record.data.guru_nama === 'undefined' || ! e.record.data.guru_nama){
						Ext.Msg.alert('Peringatan', 'Kolom "Kelas", "Tahun Pelajaran", "Mata Pelajaran", dan "Guru" tidak boleh kosong.');
						return false;
					}
					/* e.store.sync();
					return true; */
					var jsonData = Ext.encode(e.record.data);
					
					Ext.Ajax.request({
						method: 'POST',
						url: base_url+'index.php/c_mapelkelas/save',
						params: {data: jsonData},
						success: function(response){
							e.store.reload({
								callback: function(){
									var newRecordIndex = e.store.findBy(
										function(record, id) {
											if ((record.get('mapelkelas_tingkat') == e.record.data.mapelkelas_tingkat) && (record.get('mapelkelas_nama') === e.record.data.mapelkelas_nama)) {
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
                    text: 'mapelkelas_id',
                    dataIndex: 'mapelkelas_id',
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
                    dataIndex: 'mapelkelas_thnpelajaran',
					width: 150,
                    editor: Ext.create('Ext.form.field.Text', {
                        allowBlank: false
                    })
                }, {
                    text: 'Mata Pelajaran',
                    dataIndex: 'mapel_nama',
					flex: 1,
                    editor: Ext.create('Ext.form.field.ComboBox', {
						store: mapelStore,
						queryMode: 'local',
						displayField:'mapel_nama',
						valueField: 'mapel_id',
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
                }, {
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
					mapelStore.reload();
					guruStore.reload();
					
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