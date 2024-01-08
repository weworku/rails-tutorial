# rails-tutorial
https://railsguides.jp/getting_started.html

初回チェックアウト後は、bundle install をしてください

`bundle install`

`rails webpacker:install`

`rails s`



# トラブルシュート

## rails s(server) コマンドで「sqlite3/sqlite3_native (LoadError)」が出た時

https://stackoverflow.com/questions/17643897/cannot-load-such-file-sqlite3-sqlite3-native-loaderror-on-ruby-on-rails


> sqlite3 gemspec ファイルを見つけます。一例としては、 
> /usr/local/share/gem/specifications/sqlite3-1.3.7.gemspec
> 
> Alpine
> `/usr/local/bundle/specifications/sqlite3-1.7.0-aarch64-linux.gemspec `
> 
> ウィンドウズ： `C:\Ruby21\lib\ruby\gems\2.1.0\specifications`
> 
> Rubygem のパスと sqlite3 のバージョンに応じて調整する必要があります。上記のファイルを編集し、次の行を探します
> 
> `s.require_paths=["lib"]`
> に変更します
> 
> `s.require_paths= ["lib/sqlite3_native"]`
>  
