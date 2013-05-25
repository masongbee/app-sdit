Ext.define('SDIT.view.Viewport', {
    extend: 'Ext.container.Viewport',
    requires:[
        'Ext.tab.Panel',
        'Ext.layout.container.Border'
    ],

    layout: 'border',

    items: [{
        region: 'north',
        xtype: 'appHeader'
    }, {
        region: 'center',
        layout: {
            type : 'hbox',
            align: 'stretch'
        },
        items:[{
            cls: 'x-example-panel',
            flex: 1,
            //title: '&nbsp;',
            id   : 'contentPanel',
            layout: {
                type: 'card'
            },
            overflowY: 'auto',
            bodyPadding: 0
        }]
    }]
});