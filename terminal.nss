menu(type='*' where=(sel.count or wnd.is_taskbar or wnd.is_edit) title='Terminal' sep='top' image=icon.run_with_powershell)
{
	$tip_run_admin=["\xE1A7 SHIFT tuşuna basarak " + this.title + " yönetici olarak çalıştırabilirsiniz", tip.warning, 1.0]
	$has_admin=key.shift() or key.rbutton()
	
	item(title='Komut İstemi' tip=tip_run_admin admin=has_admin image cmd='cmd.exe' args='/K TITLE Komut İstemi &ver& PUSHD "@sel.dir"')
	item(title='Windows PowerShell' admin=has_admin tip=tip_run_admin image cmd='powershell.exe' args='-noexit -command Set-Location -Path "@sel.dir\."')
	item(where=package.exists("WindowsTerminal") title='Windows Terminal' tip=tip_run_admin admin=has_admin image='@package.path("WindowsTerminal")\WindowsTerminal.exe' cmd='wt.exe' arg='-d "@sel.path\."')
}
