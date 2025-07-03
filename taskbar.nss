menu(type="taskbar" vis=key.shift() or key.lbutton() pos=0 title=app.name image=\uE249)
{
	item(title="ayarlar" image=\uE10A cmd='"@app.cfg"')
	item(title="yönetici" image=\uE0F3 admin cmd='"@app.exe"')
	item(title="dizin" image=\uE0E8 cmd='"@app.dir"')
	item(title="sürüm\t"+@app.ver vis=label col=1)
	item(title="dokümanlar" image=\uE1C4 cmd='https://nilesoft.org/docs')
	item(title="bağış yap" image=\uE1A7 cmd='https://nilesoft.org/donate')
}

menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{
	menu(title="Uygulamalar" image=\uE254)
	{
		item(title='Paint' image=\uE116 cmd='mspaint')
		item(title='Edge' image cmd='@sys.prog32\Microsoft\Edge\Application\msedge.exe')
		item(title='Hesap Makinesi' image=\ue1e7 cmd='calc.exe')
		item(title='Kayıt Defteri' image cmd='regedit.exe')
	}
	menu(title="Pencereler" image=\uE1FB)
	{
		item(title="Pencereleri Basamakla" cmd=command.cascade_windows)
		item(title="Pencereleri Üst Üste Göster" cmd=command.Show_windows_stacked)
		item(title="Pencereleri Yan Yana Göster" cmd=command.Show_windows_side_by_side)
		sep
		item(title="Tüm Pencereleri Simge Durumuna Küçült" cmd=command.minimize_all_windows)
		item(title="Tüm Pencereleri Geri Yükle" cmd=command.restore_all_windows)
	}
	item(title="Masaüstü" image=icon.desktop cmd=command.toggle_desktop)
	item(title="Ayarlar" image=icon.settings(auto, image.color1) cmd='ms-settings:')
	item(title="Görev Yöneticisi" sep=both image=icon.task_manager cmd='taskmgr.exe')
	item(title="Görev Çubuğu Ayarları" sep=both image=inherit cmd='ms-settings:taskbar')
	item(vis=key.shift() title="Gezgini Yeniden Başlat" cmd=command.restart_explorer)
}
