Ext.define('SDIT.view.MASTER.Siswa', {
    extend: 'Ext.form.Panel',
    
    title: '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Siswa',
    layout: 'border',
    hideMode: Ext.isIE ? 'offsets' : 'display',
    overflowY: 'auto',
    
    initComponent: function(){
        var store = Ext.create('Ext.data.Store', {
            storeId:'siswaStore',
            fields:['siswa_id','siswa_nis','siswa_nama','siswa_tmptlahir',
                    {name: 'siswa_tgllahir', type: 'date', dateFormat: 'Y-d-m', mapping: 'siswa_tgllahir'},
                    'siswa_alamat','siswa_telp','siswa_hp','siswa_sekolah_asal','siswa_nama_wali','siswa_pekerjaan'],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_siswa/getAll',
                    create	: base_url+'index.php/c_siswa/save',
                    update	: base_url+'index.php/c_siswa/save',
                    destroy	: base_url+'index.php/c_siswa/delete'
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
            autoLoad: true
        });
        
        var ftest = function(angka = 0){
            console.log(angka);
        };
        
        var enable_form = function(){
            console.log('enable form');
            grid.setDisabled(true);
            
            form.setDisabled(false);
            tabs.setActiveTab(form);
        };
        
        var enable_grid = function(){
            grid.getStore().reload();
            console.log('enable form');
            form.setDisabled(true);
            
            grid.setDisabled(false);
            tabs.setActiveTab(grid);
        };
        
        var delete_grid = function(dataview, selections){
            console.log(selections);
            var selection = grid.getSelectionModel().getSelection()[0];
            if(selection){
                Ext.Msg.confirm('Confirmation', 'Are you sure to delete this data: Nama Siswa = \"'+selection.data.siswa_nama+'\"?', function(btn){
                    if (btn == 'yes'){
                        grid.down('#btndelete').setDisabled(true);
                        
                        grid.getStore().remove(selection);
                        grid.getStore().sync();
                    }
                });
                
            }
        };
        
        /* Data List */
        var grid = Ext.create('Ext.grid.Panel', {
            title: 'Grid',
            store: store,
            columns: [
                { text: 'siswa_nis',  dataIndex: 'siswa_nis' },
                { text: 'siswa_nama',  dataIndex: 'siswa_nama', flex: 1 },
                { text: 'siswa_tmptlahir',  dataIndex: 'siswa_tmptlahir', width: 120 },
                { text: 'siswa_tgllahir',  dataIndex: 'siswa_tgllahir', renderer: Ext.util.Format.dateRenderer('d-m-Y') },
                { text: 'siswa_alamat', dataIndex: 'siswa_alamat', flex: 2 },
                { text: 'siswa_telp', dataIndex: 'siswa_telp' },
                { text: 'siswa_hp', dataIndex: 'siswa_hp' },
                { text: 'siswa_sekolah_asal', dataIndex: 'siswa_sekolah_asal', width: 140 },
                { text: 'siswa_nama_wali', dataIndex: 'siswa_nama_wali', width: 130 },
                { text: 'siswa_pekerjaan', dataIndex: 'siswa_pekerjaan', width: 120 }
            ],
            /*dockedItems: [{
                xtype: 'toolbar',
                dock: 'top',
                items: [
                    { xtype: 'button', text: 'Button 1', handler: function(){ftest(19);} }
                ]
            }],*/
            dockedItems: [
                {
                    xtype: 'toolbar',
                    frame: true,
                    items: [{
                        text	: 'Add',
                        iconCls	: 'icon-add',
                        handler : enable_form
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
                    displayInfo: false
                }
            ],
            
            listeners: {
                selectionchange: function(dataview, selections){
                    if(selections.length){
                        console.log('enable delete');
                        this.down('#btndelete').setDisabled(!selections.length);
                    }
                }
            }
        });
        
        /* Form Data Insert start */
        var form = Ext.create('Ext.form.Panel', {
            title: 'Form',
            bodyPadding: 5,
            disabled: true,
            
            // The form will submit an AJAX request to this URL when submitted
            url: base_url+'index.php/c_siswa/save',
            
            // Fields will be arranged vertically, stretched to full width
            //layout: 'anchor',
            //defaults: {
            //    anchor: '100%'
            //},
            layout: 'column',
            fieldDefaults: {
                labelAlign: 'right',
                labelWidth: 120,
                msgTarget: 'qtip'
            },
            
            // The fields
            //defaultType: 'textfield',
            items: [{
                columnWidth: 0.48,
                items: [{
                    xtype: 'fieldset',
                    title: 'Data Pribadi',
                    defaultType: 'textfield',
                    layout: 'anchor',
                    defaults: {
                        anchor: '100%'
                    },
                    items: [{
                        name: 'siswa_id',
                        fieldLabel: 'ID',
                        hidden: true
                    }, {
                        name: 'siswa_nama',
                        fieldLabel: 'Nama',
                        flex: 1,
                        emptyText: 'Nama Lengkap',
                        allowBlank: false
                    }, {
                        xtype: 'fieldcontainer',
                        fieldLabel: 'Tempat, Tgl Lahir',
                        layout: 'hbox',
                        defaultType: 'textfield',
                        defaults: {
                            hideLabel: 'true'
                        },
                        items: [{
                            name: 'siswa_tmptlahir',
                            fieldLabel: 'Tempat Lahir',
                            emptyText: 'Tempat Lahir',
                            allowBlank: false
                        }, {
                            xtype: 'label',
                            text: ',',
                            margin: '10 5 0 5'
                        }, {
                            xtype: 'datefield',
                            format: 'd/m/Y',
                            name: 'siswa_tgllahir',
                            fieldLabel: 'Tgl Lahir',
                            width: 100,
                            emptyText: 'Tgl Lahir',
                            margin: '0 5 0 0',
                            allowBlank: false
                        }]
                    }, {
                        xtype     : 'textareafield',
                        grow      : true,
                        name      : 'siswa_alamat',
                        fieldLabel: 'Alamat'
                    }, {
                        xtype: 'fieldcontainer',
                        fieldLabel: 'Telp/HP',
                        layout: 'hbox',
                        defaultType: 'textfield',
                        defaults: {
                            hideLabel: 'true'
                        },
                        items: [{
                            name: 'siswa_telp',
                            fieldLabel: 'Telp',
                            emptyText: 'Telp',
                            allowBlank: false,
                            maskRe: /[\d\-]/
                        }, {
                            xtype: 'label',
                            text: '/',
                            margin: '5 5 0 5'
                        }, {
                            name: 'siswa_hp',
                            fieldLabel: 'HP',
                            emptyText: 'HP',
                            margin: '0 5 0 0',
                            allowBlank: false,
                            maskRe: /[\d\-]/
                        }]
                    }]
                }]
            }, {
                columnWidth: 0.04,
                items: [{html: '&nbsp;'}]
            }, {
                columnWidth: 0.48,
                items: [{
                    xtype: 'fieldset',
                    title: 'Data Kesiswaan',
                    defaultType: 'textfield',
                    layout: 'anchor',
                    defaults: {
                        anchor: '100%',
                        labelWidth: 140
                    },
                    items: [{
                        xtype: 'fieldcontainer',
                        fieldLabel: 'NIS',
                        layout: 'hbox',
                        defaultType: 'textfield',
                        defaults: {
                            hideLabel: 'true'
                        },
                        items: [{
                            name: 'siswa_nis',
                            fieldLabel: 'NIS',
                            emptyText: 'NIS',
                            allowBlank: false
                        }]
                    }, {
                        name: 'siswa_sekolah_asal',
                        fieldLabel: 'Sekolah Asal',
                        emptyText: 'Sekolah Asal',
                        allowBlank: false
                    }, {
                        name: 'siswa_nama_wali',
                        fieldLabel: 'Nama Wali Murid',
                        emptyText: 'Nama Wali Murid',
                        allowBlank: false
                    }, {
                        xtype: 'fieldcontainer',
                        fieldLabel: 'Pekerjaan Wali Murid',
                        layout: 'hbox',
                        defaultType: 'textfield',
                        defaults: {
                            hideLabel: 'true'
                        },
                        items: [{
                            name: 'siswa_pekerjaan',
                            fieldLabel: 'Pekerjaan Wali Murid',
                            emptyText: 'Pekerjaan Wali Murid',
                            allowBlank: false
                        }]
                    }]
                }]
            }],
            
            // Reset and Submit buttons
            buttons: [{
                text: 'Cancel',
                handler: function() {
                    this.up('form').getForm().reset();
                    enable_grid();
                }
            }, {
                text: 'Reset',
                handler: function() {
                    this.up('form').getForm().reset();
                }
            }, {
                text: 'Submit',
                formBind: true, //only enabled once the form is valid
                disabled: true,
                handler: function() {
                    var form = this.up('form').getForm();
                    if (form.isValid()) {
                        var jsonData = Ext.encode(form.getValues());
                        form.submit({
                            method: 'POST',
                            params: {data: jsonData},
                            success: function(form, action) {
                                form.reset();
                                enable_grid();
                                Ext.Msg.alert('Success', action.result.message);
                            },
                            failure: function(form, action) {
                                Ext.Msg.alert('Failed', action.result.message);
                            }
                        });
                    }
                }
            }]
        });
        /* Form Data Insert end */
        
        var tabs = Ext.create('Ext.tab.Panel', {
            region: 'center',
            
            margins: 0,
            tabPosition: 'left',
            activeTab: 0,
            items: [grid, form]
        });
        
        Ext.apply(this, {
            items: [tabs]
        });
        
        this.callParent();
    }
});