Ext.define('TRUSTACC.model.Guru', {
    extend: 'Ext.data.Model',
    fields		: ['guru_nik','guru_nama','guru_tmptlahir',
                    {name: 'guru_tgllahir', type: 'date', dateFormat: 'Y-d-m', mapping: 'guru_tgllahir'},
                    'guru_alamat','guru_telp','guru_hp','guru_status','guru_pendidikan','guru_thnmasuk','guru_jabatan'],
	idProperty	: 'guru_nik'
});
