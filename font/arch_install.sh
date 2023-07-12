# array中换成你要安装的字体的文件名
array=(HackNerdFont JetBrainsMono OperatorMono)
current_dir=`pwd`
for font in ${array[@]}
do
    sudo cp -r ${font} /usr/share/fonts/
    cd /usr/share/fonts/${font}
	sudo fc-cache -fv # 刷新系统字体缓存
    cd ${current_dir}
done

