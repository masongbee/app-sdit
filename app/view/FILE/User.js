Ext.define('SDIT.view.FILE.User', {
    extend: 'Ext.form.Panel',
    
    title: '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User',
    layout: 'border',
    hideMode: Ext.isIE ? 'offsets' : 'display',
    overflowY: 'auto',
    
    initComponent: function(){
        var store = Ext.create('Ext.data.Store', {
            storeId:'simpsonsStore',
            fields:['name', 'email', 'phone'],
            data:{'items':[
                { 'name': 'Lisa',  "email":"lisa@simpsons.com",  "phone":"555-111-1224"  },
                { 'name': 'Bart',  "email":"bart@simpsons.com",  "phone":"555-222-1234" },
                { 'name': 'Homer', "email":"home@simpsons.com",  "phone":"555-222-1244"  },
                { 'name': 'Marge', "email":"marge@simpsons.com", "phone":"555-222-1254"  }
            ]},
            proxy: {
                type: 'memory',
                reader: {
                    type: 'json',
                    root: 'items'
                }
            }
        });
        
        var grid = Ext.create('Ext.grid.Panel', {
            title: 'Grid',
            store: store,
            columns: [
                { text: 'Name',  dataIndex: 'name' },
                { text: 'Email', dataIndex: 'email', flex: 1 },
                { text: 'Phone', dataIndex: 'phone' }
            ],
            dockedItems: [{
                xtype: 'toolbar',
                dock: 'top',
                items: [
                    { xtype: 'button', text: 'Button 1', handler: function(){ftest(19);} }
                ]
            }]
        });
        
        var tab_panel = Ext.create('Ext.tab.Panel', {
            region: 'center',
            
            margins: 0,
            tabPosition: 'left',
            activeTab: 0,
            items: [grid]
        });
        
        Ext.apply(this, {
            items: [tab_panel]
        });
        
        this.callParent();
    }
});
