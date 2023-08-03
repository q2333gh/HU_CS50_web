#!/bin/bash
rm -rf ~/.pip
mkdir ~/.pip
cd ~/.pip
touch pip.conf
# Define the text as a variable
text="\
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
index-index-url = https://mirrors.aliyun.com/pypi/simple/
[install]
trusted-host =
    pypi.tuna.tsinghua.edu.cn
    mirrors.aliyun.com \
"
echo "$text" > pip.conf

# cat pip.conf
expected_content="$text"

# Check if the content of ~/.pip/pip.conf matches the expected content
actual_content=$(cat ~/.pip/pip.conf)
if [ "$actual_content" != "$expected_content" ]; then
  echo "Content of ~/.pip/pip.conf does not match the expected content"
  exit 1
fi

# If everything is OK, print a success message and exit with code 0
echo "Changed pip source to CN source"
echo "Tip: This change ONLY works for the current user: $(whoami)"
exit 0








