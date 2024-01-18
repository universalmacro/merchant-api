```bash
openapi-generator generate -i ./openapi.yml -g typescript-fetch -o ./ts-sdk
openapi-generator generate -g typescript-fetch -i ./openapi.yml -o typescript-fetch --additional-properties=npmName=@universalmacro/marchant-ts-sdk
npm publish --access=public
```
