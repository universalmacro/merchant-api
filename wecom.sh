url=$1
packageName=$2
version=$2

generate_post_data()
{
  cat <<EOF
{
  "msgtype": "text",
  "text": {
    "content": "$packageName 新版本SDK發布完成 - $version"
  }
}
EOF
}

curl -X POST $url -H 'Content-Type: application/json' --data "$(generate_post_data)"