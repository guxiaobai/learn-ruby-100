# 003 - Api



## 1 - respond_to

```ruby
class WelcomeController < ApplicationController
  include ActionController::MimeResponds

  def index
    respond_to :json, :html
  end

end
```

```bash
curl -i -H "Accept: text/html" http://127.0.0.1:3000
curl -i -H "Accept: application/json" http://127.0.0.1:3000
```

* [ActionController::API](https://api.rubyonrails.org/classes/ActionController/API.html)
* [Accept - HTTP | MDN](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Headers/Accept)

## 2 - Using Fetch

```javascript
fetch('http://127.0.0.1:3000')
  .then(response => response.json())
  .then(data => console.log(data));
```

* [Using Fetch - Web APIs | MDN](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch)

## Ref

* [Using Rails for API-only Applications](https://guides.rubyonrails.org/v5.2/api_app.html)
* [`jbuilder`](https://rubygems.org/gems/jbuilder)
* [`rack-cors`](https://rubygems.org/gems/rack-cors) / [跨源资源共享（CORS） - HTTP | MDN](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/CORS)

