Ext.define('SDIT.view.MASTER.Mapel', {
    extend: 'Ext.form.Panel',
    
    title: '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mata Pelajaran',
    layout: 'border',
    hideMode: Ext.isIE ? 'offsets' : 'display',
    overflowY: 'auto',
    
    initComponent: function(){
        /* FUNCTION start */
        var add_grid = function(){
            var default_data = {
                mapel_id : 0,
                mapel_nama : ''
            };
            rowEditor.cancelEdit();
            grid.getStore().insert(0, default_data);
            grid.getSelectionModel().getSelection()[0];
            rowEditor.startEdit(0, 0);
        };
        
        var delete_grid = function(dataview, selections){
            var selection = grid.getSelectionModel().getSelection()[0];
            if(selection){
                Ext.Msg.confirm('Confirmation', 'Are you sure to delete this data: Nama Mapel = \"'+selection.data.mapel_nama+'\"?', function(btn){
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
        /* FUNCTION end */
        
        var store = Ext.create('Ext.data.Store', {
            storeId:'mapelStore',
            fields:['mapel_id',
                    'mapel_nama',
                    'mapel_created_date',
                    'mapel_created_by',
                    'mapel_updated_date',
                    'mapel_updated_by',
                    'mapel_revised'
            ],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_mapel/getAll',
                    create	: base_url+'index.php/c_mapel/save',
                    update	: base_url+'index.php/c_mapel/save',
                    destroy	: base_url+'index.php/c_mapel/delete'
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
                    if((/^\s*$/).test(e.record.data.mapel_nama) ){
						editor.cancelEdit();
						var sm = e.grid.getSelectionModel();
						e.store.remove(sm.getSelection());
						
						e.grid.down('#btndelete').setDisabled(!sm.getSelection().length);
					}
				},
				'validateedit': function(editor, e){
				},
				'afteredit': function(editor, e){
					if((/^\s*$/).test(e.record.data.mapel_nama)){
						Ext.Msg.alert('Peringatan', 'Kolom "mapel_nama" tidak boleh kosong.');
						return false;
					}
					/* e.store.sync();
					return true; */
					var jsonData = Ext.encode(e.record.data);
					
					Ext.Ajax.request({
						method: 'POST',
						url: base_url+'index.php/c_mapel/save',
						params: {data: jsonData},
						success: function(response){
							e.store.reload({
								callback: function(){
									var newRecordIndex = e.store.findBy(
										function(record, id) {
											if ((record.get('mapel_nama') === e.record.data.mapel_nama)) {
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
                    text: 'mapel_id',
                    dataIndex: 'mapel_id',
                    hidden: true
                }, {
                    text: 'mapel_nama',
                    dataIndex: 'mapel_nama',
                    flex: 1,
                    editor: Ext.create('Ext.form.field.Text', {
                        allowBlank: false
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
                    }
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