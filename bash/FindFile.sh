#!/bin/bash
# キーワードを含むファイル名を出力します。
# FindFile.sh パス キーワード
for file in `find $1 -type f`; do
  cat $file | grep $2 > /dev/null
  if [ $? = 0 ]; then
    echo $file
  fi 
done
