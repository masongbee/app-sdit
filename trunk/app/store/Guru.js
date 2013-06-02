Ext.define('TRUSTACC.store.Guru', {
    extend	: 'Ext.data.Store',
    alias	: 'widget.GuruStore',
    model	: 'TRUSTACC.model.Guru',
    
    autoLoad	: true,
    autoSync	: false,
    
    storeId		: 'GuruStore',
    
    pageSize	: 20, // number display per Grid
    
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
    
    constructor: function(){
    	this.callParent(arguments);
    }
    
});
