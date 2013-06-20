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
            'appHeader button[action=logout]': {
                click: this.logout_click
            },
            'appHeader button[action=dtguru]': {
                click: this.dtguru_click
            },
            'appHeader button[action=dtsiswa]': {
                click: this.dtsiswa_click
            },
            'appHeader button[action=dtkelas]': {
                click: this.dtkelas_click
            },
            'appHeader button[action=dtmapelkelas]': {
                click: this.dtmapelkelas_click
            },
            'appHeader button[action=dtsiswakelas]': {
                click: this.dtsiswakelas_click
            },
            'appHeader button[action=dtmapel]': {
                click: this.dtmapel_click
            },
            'appHeader button[action=dtraport]': {
                click: this.dtraport_click
            },
            'appHeader button[action=dtrekapraport]': {
                click: this.dtrekapraport_click
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
    
    logout_click: function(){
        console.log('logout click');
        Ext.Ajax.request({
            method: 'POST',
            url: base_url+'index.php?c=c_login&m=logout',
            success: function(response){
                var redirect = 'index.php?c=c_login';
				window.location = redirect;
            }
        });
    },
    
    dtguru_click: function(){
        console.log('data guru click');
        this.setActivePage('SDIT.view.MASTER.Guru', 'Guru');
    },
    
    dtsiswa_click: function(){
        console.log('data siswa click');
        this.setActivePage('SDIT.view.MASTER.Siswa', 'Siswa');
    },
    
    dtkelas_click: function(){
        console.log('data kelas click');
        this.setActivePage('SDIT.view.MASTER.Kelas', 'Kelas');
    },
    
    dtmapelkelas_click: function(){
        console.log('data mapel dalam kelas click');
        this.setActivePage('SDIT.view.MASTER.Mapelkelas', 'Mata Pelajaran dalam Kelas');
    },
    
    dtsiswakelas_click: function(){
        console.log('data kelas click');
        this.setActivePage('SDIT.view.MASTER.Siswakelas', 'Siswa per Kelas');
    },
    
    dtmapel_click: function(){
        console.log('data mata pelajaran click');
        this.setActivePage('SDIT.view.MASTER.Mapel', 'Mata Pelajaran');
    },
    
    dtraport_click: function(){
        console.log('data Raport Siswa click');
        this.setActivePage('SDIT.view.PENILAIAN.Raport', 'Raport');
    },
    
    dtrekapraport_click: function(){
        console.log('data Rekap Raport Siswa click');
        this.setActivePage('SDIT.view.PENILAIAN.Rekap_raport', 'Rekap Raport');
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