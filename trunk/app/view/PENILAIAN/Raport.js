Ext.define('SDIT.view.PENILAIAN.Raport', {
    extend: 'Ext.form.Panel',
    
    title: '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Raport',
    layout: 'border',
    hideMode: Ext.isIE ? 'offsets' : 'display',
    overflowY: 'auto',
    
    initComponent: function(){
        /* FUNCTION start */
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
            storeId:'store',
            fields:['nilai_id',
					'siswakelas_id',
					'siswa_nisnama',
					'mapel_id',
					'nilai_uh1',
					'nilai_uh2',
					'nilai_uh3',
					'nilai_uh_rt2',
					'nilai_uts',
					'nilai_t1',
					'nilai_t2',
					'nilai_t3',
					'nilai_t_rt2',
					'nilai_uas',
					'nilai_total',
					'nilai_created_date',
					'nilai_created_by',
					'nilai_updated_date',
					'nilai_updated_by',
					'nilai_revised'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_raport/getAll',
                    create	: base_url+'index.php/c_raport/save',
                    update	: base_url+'index.php/c_raport/save',
                    destroy	: base_url+'index.php/c_raport/delete'
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
			pageSize: 100,
            autoLoad: false
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
		
		var mapelStore = Ext.create('Ext.data.Store', {
            storeId:'mapelStore',
            fields:['mapel_id',
					'mapel_nama'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_raport/getAllMapel'
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
        var rowEditor = Ext.create('Ext.grid.plugin.RowEditing', {
            clicksToEdit: 2,
            clicksToMoveEditor: 1,
			listeners: {
				'beforeedit': function(editor, e){
					/* to do => before editing is active */
				},
				'canceledit': function(editor, e){
					/* to do => row editing is cancel */
                    /*if((/^\s*$/).test(e.record.data.kelas_tingkat) || (/^\s*$/).test(e.record.data.kelas_nama) ){
						editor.cancelEdit();
						var sm = e.grid.getSelectionModel();
						e.store.remove(sm.getSelection());
                        
                        e.grid.down('#btndelete').setDisabled(!sm.getSelection().length);
					}*/
				},
				'validateedit': function(editor, e){
				},
				'afteredit': function(editor, e){
					var rt2uh = (e.record.data.nilai_uh1 + e.record.data.nilai_uh2 + e.record.data.nilai_uh3) / 3;
					e.record.data.nilai_uh_rt2 = rt2uh;
					var rt2t = (e.record.data.nilai_t1 + e.record.data.nilai_t2 + e.record.data.nilai_t3) / 3;
					e.record.data.nilai_uh_rt2 = rt2uh;
					var total = (rt2uh + e.record.data.nilai_uts + rt2t + e.record.data.nilai_uas) / 4;
					e.record.data.nilai_total = total;
					
					e.store.sync();
					return true;
				}
			}
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
			forceSelection:true
		});
		var thn_pelajaran_filterField = Ext.create('Ext.form.field.Text', {
			fieldLabel: '<b>Tahun Pelajaran</b>',
			labelWidth: 100,
			width: 200,
			allowBlank: false
		});
		var mapel_filterField = Ext.create('Ext.form.field.ComboBox', {
			fieldLabel: '<b>Mata Pelajaran</b>',
			labelWidth: 95,
			store: mapelStore,
			queryMode: 'local',
			displayField:'mapel_nama',
			valueField: 'mapel_id',
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
					store.load({
						params: {
							kelas: kelas_filterField.getValue(),
							thn_pelajaran: thn_pelajaran_filterField.getValue(),
							mapel: newValue
						}
					});
				}
			}
		});
        var grid = Ext.create('Ext.grid.Panel', {
            title: 'Grid',
            store: store,
            plugins: [rowEditor],
            selectedIndex: -1,
            selModel: Ext.selection.Model(),
			viewConfig: { forceFit:true },
            columns: [
                {
                    text: 'nilai_id',
                    dataIndex: 'nilai_id',
                    hidden: true
                }, {
					text: 'NO',
					xtype: 'rownumberer',
					align: 'center',
					width: 50
				}, {
					text: '<center>NAMA</center>',
					dataIndex: 'siswa_nisnama',
					align: 'left',
					flex: 1
				}, {
					text: 'A',
					columns: [{
						text: 'UH 1',
						dataIndex: 'nilai_uh1',
						align: 'center',
						width: 70,
						editor: Ext.create('Ext.form.field.Number')
					}, {
						text: 'UH 2',
						dataIndex: 'nilai_uh2',
						align: 'center',
						width: 70,
						editor: Ext.create('Ext.form.field.Number')
					}, {
						text: 'UH 3',
						dataIndex: 'nilai_uh3',
						align: 'center',
						width: 70,
						editor: Ext.create('Ext.form.field.Number')
					}]
				}, {
					text: 'Rt2',
					dataIndex: 'nilai_uh_rt2',
					align: 'center',
					width: 70,
					renderer: function(value){
						return Ext.util.Format.currency(value, '&nbsp;', 1);
					}
				}, {
					text: 'B',
					columns: [{
						text: 'UTS',
						dataIndex: 'nilai_uts',
						align: 'center',
						width: 70,
						editor: Ext.create('Ext.form.field.Number')
					}]
				}, {
					text: 'C',
					columns: [{
						text: 'T1',
						dataIndex: 'nilai_t1',
						align: 'center',
						width: 70,
						editor: Ext.create('Ext.form.field.Number')
					}, {
						text: 'T2',
						dataIndex: 'nilai_t2',
						align: 'center',
						width: 70,
						editor: Ext.create('Ext.form.field.Number')
					}, {
						text: 'T3',
						dataIndex: 'nilai_t3',
						align: 'center',
						width: 70,
						editor: Ext.create('Ext.form.field.Number')
					}]
				}, {
					text: 'Rt2',
					dataIndex: 'nilai_t_rt2',
					align: 'center',
					width: 70,
					renderer: function(value){
						return Ext.util.Format.currency(value, '&nbsp;', 1);
					}
				}, {
					text: 'D',
					columns: [{
						text: 'UAS',
						dataIndex: 'nilai_uas',
						align: 'center',
						width: 70,
						editor: Ext.create('Ext.form.field.Number')
					}]
				}, {
					text: 'N=((A + B + C + D) / 4)',
					dataIndex: 'nilai_total',
					align: 'center',
					width: 180,
					renderer: function(value){
						return Ext.util.Format.currency(value, '&nbsp;', 1);
					}
				}
            ],
            dockedItems: [
                Ext.create('Ext.toolbar.Toolbar', {
					items: [{
						xtype: 'fieldcontainer',
						layout: 'hbox',
						defaultType: 'button',
						items: [thn_pelajaran_filterField, {
							xtype: 'splitter'
						}, {
							xtype: 'splitter'
						}, kelas_filterField, {
							xtype: 'splitter'
						}, {
							xtype: 'splitter'
						}, mapel_filterField]
					}]
				})/*,
                {
                    xtype: 'pagingtoolbar',
                    store: store,
                    dock: 'bottom',
                    displayInfo: true
                }*/
            ],
            
            listeners: {
				afterrender: function(){
					kelasStore.reload();
					mapelStore.reload();
					
					var thn_pelajaran_sekarang = get_thn_pelajaran();
					thn_pelajaran_filterField.setValue(thn_pelajaran_sekarang);
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