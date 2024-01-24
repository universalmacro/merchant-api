url=$1
packageName=$2
version=$3

org=universalmacro
generate_post_data()
{
  cat <<EOF
{
  "msgtype": "text",
  "text": {
    "content": "$packageName@$version interfaces released\ngo get github.com/$org/$packageName@$version"
  }
}
EOF
}

curl -X POST $url -H 'Content-Type: application/json' --data "$(generate_post_data)"