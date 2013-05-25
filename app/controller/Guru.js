Ext.define('SDIT.controller.Guru', {
    extend: 'Ext.app.Controller',
    
    refs: [],
    
    init: function() {
        this.control({
            'viewport': {
                afterlayout: this.afterViewportLayout
            },
            'appHeader button[action=user]': {
                click: this.user_click
            }
        });
    },
    
});