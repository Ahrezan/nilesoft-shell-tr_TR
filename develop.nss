menu(mode="multiple" title='&Geliştir' vis=key.shift() sep=sep.bottom image=\uE26E)
{
	menu(mode="single" title='düzenleyiciler' image=\uE17A)
	{
		item(title='Visual Studio Code' image=[\uE272, #22A7F2] cmd='code' args='"@sel.path"')
		separator
		item(type='file' mode="single" title='Windows not defteri' image cmd='@sys.bin\notepad.exe' args='"@sel.path"')
	}

	menu(mode="multiple" title='dotnet' image=\uE143)
	{
		item(title='çalıştır' cmd-line='/K dotnet run' image=\uE149)
		item(title='watch (izle)' cmd-line='/K dotnet watch')
		item(title='temizle' image=\uE0CE cmd-line='/K dotnet clean')
		separator
		item(title='hata ayıklama derlemesi' cmd-line='/K dotnet build')
		item(title='yayın derlemesi' cmd-line='/K dotnet build -c release /p:DebugType=None')

		menu(mode="multiple" sep="both" title='yayınla' image=\ue11f)
		{
			$publish='dotnet publish -r win-x64 -c release --output publish /*/p:CopyOutputSymbolsToPublishDirectory=false*/'
			item(title='tek dosya olarak yayınla' sep="after" cmd-line='/K @publish --no-self-contained /p:PublishSingleFile=true')
			item(title='framework-bağımlı dağıtım' cmd-line='/K @publish')
			item(title='framework-bağımlı çalıştırılabilir' cmd-line='/K @publish --self-contained false')
			item(title='kendinden bağımsız dağıtım' cmd-line='/K @publish --self-contained true')
			item(title='tek-dosya' cmd-line='/K @publish /p:PublishSingleFile=true /p:PublishTrimmed=false')
			item(title='tek-dosya-kırpılmış' cmd-line='/K @publish /p:PublishSingleFile=true /p:PublishTrimmed=true')
		}
		
		item(title='ef migrations add İlkOluşturma' cmd-line='/K dotnet ef migrations add InitialCreate')
		item(title='ef veritabanı güncelle' cmd-line='/K dotnet ef database update')
		separator
		item(title='yardım' image=\uE136 cmd-line='/k dotnet -h')
		item(title='sürüm' cmd-line='/k dotnet --info')
	}
}
