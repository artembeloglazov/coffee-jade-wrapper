#coffee-jade-wrapper
>simple template engine based on jade and jquery

```coffee-script
{j} = require 'coffee-jade-wrapper'

doc = j('html')
        .appendj('body text of body')
            .appendj('p some text')
                .appendj('p some text2')
console.log doc[0].toString()
```