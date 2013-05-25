Ext.define('SDIT.controller.Main', {
    extend: 'Ext.app.Controller',
    
    refs: [
        {
            ref: 'viewport',
            selector: 'viewport'
        },
        {
            ref: 'appHeader',
            selector: 'appHeader'
        },
        {
            ref: 'contentPanel',
            selector: '#contentPanel'
        }
    ],
    
    init: function() {
        this.control({
            'viewport': {
                afterlayout: this.afterViewportLayout
            },
            'appHeader button[action=user]': {
                click: this.user_click
            },
            'appHeader button[action=dtguru]': {
                click: this.dtguru_click
            },
            'appHeader button[action=dtsiswa]': {
                click: this.dtsiswa_click
            },
            'contentPanel': {
                resize: 'centerContent'
            }
        });
    },
    
    afterViewportLayout: function(){
        console.log('viewport render');
    },
    
    user_click: function(){
        console.log('user click');
        this.setActivePage('SDIT.view.FILE.User', 'User');
    },
    
    dtguru_click: function(){
        console.log('data guru click');
        this.setActivePage('SDIT.view.MASTER.Guru', 'Guru');
    },
    
    dtsiswa_click: function(){
        console.log('data siswa click');
        this.setActivePage('SDIT.view.MASTER.Siswa', 'Siswa');
    },
    
    setActivePage: function(className, title){
        //console.log(className);
        var contentPanel = this.getContentPanel(),
            pageName;
        
        //set the browser window title
        document.title = title;
        
        //create the example
        pageName = Ext.create(className);
        
        //remove all items from the example panel and add new example
        contentPanel.removeAll(true);
        contentPanel.add(pageName);
    }
});