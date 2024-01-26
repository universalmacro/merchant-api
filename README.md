```bash
openapi-generator generate -i ./swagger.yml -g typescript-fetch -o ./ts-sdk
openapi-generator generate -g typescript-fetch -i ./swagger.yml -o typescript-fetch --additional-properties=npmName=@universalmacro/merchant-ts-sdk
npm publish --access=public
```
