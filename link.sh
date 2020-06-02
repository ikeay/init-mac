# run this code on user's root
# sudo ~/Dropbox/_backup/link.sh

user_path=$HOME/
backup_file_path=$HOME/Dropbox/_backup/

find ${backup_file_path}.ssh -type d -exec chmod 755 {} +
find ${backup_file_path}.ssh -type f -exec chmod 600 {} +
for file_path in $backup_file_path.*
do
	if [[ $file_path =~ ^$backup_file_path(.*)$ ]]; then
		file=${BASH_REMATCH[1]}
		case $file in
	    	".") ;;
			"..") ;;
	        ".git") ;;
	        *)
				rm -rf $user_path$file
				ln -s $backup_file_path$file $user_path$file;;
    	esac
	fi
done
