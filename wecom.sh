url=$1
message=$2

generate_post_data()
{
  cat <<EOF
{
  "msgtype": "text",
  "text": {
    "content": "$message"
  }
}
EOF
}

curl -X POST $url -H 'Content-Type: application/json' --data "$(generate_post_data)"