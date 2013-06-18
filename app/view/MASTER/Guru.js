Ext.define('SDIT.view.MASTER.Guru', {
    extend: 'Ext.form.Panel',
    
    title: '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Guru',
    layout: 'border',
    hideMode: Ext.isIE ? 'offsets' : 'display',
    overflowY: 'auto',
    
    initComponent: function(){
        var store = Ext.create('Ext.data.Store', {
            storeId:'guruStore',
            fields:['guru_id','guru_nik','guru_nama','guru_tmptlahir',
                    {name: 'guru_tgllahir', type: 'date', dateFormat: 'Y-d-m', mapping: 'guru_tgllahir'},
                    'guru_alamat','guru_telp','guru_hp','guru_status','guru_pendidikan','guru_thnmasuk',
                    'guru_jabatan'],
            proxy: {
                type: 'ajax',
                api: {
                    read    : base_url+'index.php/c_guru/getAll',
                    create	: base_url+'index.php/c_guru/save',
                    update	: base_url+'index.php/c_guru/save',
                    destroy	: base_url+'index.php/c_guru/delete'
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
        
        var enable_form = function(){
            console.log('enable form');
            grid.setDisabled(true);
            
            form.setDisabled(false);
            form.down('#btnreset').setDisabled(false);
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
                Ext.Msg.confirm('Confirmation', 'Are you sure to delete this data: Nama Guru = \"'+selection.data.guru_nama+'\"?', function(btn){
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
                { text: 'guru_nik',  dataIndex: 'guru_nik' },
                { text: 'guru_nama',  dataIndex: 'guru_nama', flex: 1 },
                { text: 'guru_tmptlahir',  dataIndex: 'guru_tmptlahir', width: 120 },
                { text: 'guru_tgllahir',  dataIndex: 'guru_tgllahir', renderer: Ext.util.Format.dateRenderer('d-m-Y') },
                { text: 'guru_alamat', dataIndex: 'guru_alamat', flex: 2 },
                { text: 'guru_telp', dataIndex: 'guru_telp' },
                { text: 'guru_hp', dataIndex: 'guru_hp' },
                { text: 'guru_status', dataIndex: 'guru_status' },
                { text: 'guru_pendidikan', dataIndex: 'guru_pendidikan', width: 120 },
                { text: 'guru_thnmasuk', dataIndex: 'guru_thnmasuk', width: 120 },
                { text: 'guru_jabatan', dataIndex: 'guru_jabatan' }
            ],
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
                
                itemdblclick: function(me, record, item, index){
                    enable_form();
                    form.down('#btnreset').setDisabled(true);
                    form.loadRecord(record);
                }
            }
        });
        
        /* Form Data Insert start */
        var form = Ext.create('Ext.form.Panel', {
            title: 'Form',
            bodyPadding: 5,
            disabled: true,
            
            // The form will submit an AJAX request to this URL when submitted
            url: base_url+'index.php/c_guru/save',
            
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
                        name: 'guru_id',
                        fieldLabel: 'ID',
                        hidden: true
                    }, {
                        name: 'guru_nama',
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
                            name: 'guru_tmptlahir',
                            fieldLabel: 'Tempat Lahir',
                            emptyText: 'Tempat Lahir',
                            allowBlank: true
                        }, {
                            xtype: 'label',
                            text: ',',
                            margin: '10 5 0 5'
                        }, {
                            xtype: 'datefield',
                            format: 'd M, Y',
                            name: 'guru_tgllahir',
                            fieldLabel: 'Tgl Lahir',
                            width: 140,
                            emptyText: 'Tgl Lahir',
                            margin: '0 5 0 0',
                            allowBlank: true
                        }]
                    }, {
                        xtype     : 'textareafield',
                        grow      : true,
                        name      : 'guru_alamat',
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
                            name: 'guru_telp',
                            fieldLabel: 'Telp',
                            emptyText: 'Telp',
                            allowBlank: true,
                            maskRe: /[\d\-]/
                        }, {
                            xtype: 'label',
                            text: '/',
                            margin: '5 5 0 5'
                        }, {
                            name: 'guru_hp',
                            fieldLabel: 'HP',
                            emptyText: 'HP',
                            margin: '0 5 0 0',
                            allowBlank: true,
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
                    title: 'Data Keguruan',
                    defaultType: 'textfield',
                    layout: 'anchor',
                    defaults: {
                        anchor: '100%'
                    },
                    items: [{
                        xtype: 'fieldcontainer',
                        fieldLabel: 'NIK',
                        layout: 'hbox',
                        defaultType: 'textfield',
                        defaults: {
                            hideLabel: 'true'
                        },
                        items: [{
                            name: 'guru_nik',
                            fieldLabel: 'NIK',
                            emptyText: 'NIK',
                            allowBlank: false,
                            maxLength: 6
                        }]
                    }, {
                        name: 'guru_status',
                        fieldLabel: 'Status',
                        emptyText: 'Status',
                        allowBlank: true
                    }, {
                        name: 'guru_pendidikan',
                        fieldLabel: 'Pendidikan Terakhir',
                        emptyText: 'Pendidikan Terakhir',
                        allowBlank: true
                    }, {
                        xtype: 'fieldcontainer',
                        fieldLabel: 'Tahun Masuk',
                        layout: 'hbox',
                        defaultType: 'textfield',
                        defaults: {
                            hideLabel: 'true'
                        },
                        items: [{
                            name: 'guru_thnmasuk',
                            fieldLabel: 'Tahun Masuk',
                            emptyText: 'xxxx',
                            allowBlank: true,
                            width: 50,
                            maskRe: /[\d\-]/,
                            regex: /^\d{4}$/,
                            regexText: 'Harus berformat angka xxxx'
                        }]
                    }, {
                        name: 'guru_jabatan',
                        fieldLabel: 'Jabatan',
                        emptyText: 'Jabatan',
                        allowBlank: true
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
                itemId: 'btnreset',
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