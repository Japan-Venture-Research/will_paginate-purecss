# will_paginate-purecss

This gem integrates the [Pure](http://purecss.io/) [paginator control](http://purecss.io/menus/#paginators) with the [will_paginate](https://github.com/mislav/will_paginate) pagination gem.

Just like will_paginate, Rails and Sinatra are supported.

Thanks to [will_paginate-bootstrap](https://github.com/bootstrap-ruby/will_paginate-bootstrap).

## Install

  * `gem install will_paginate-purecss`, *or*
  * For projects using Bundler, add `gem 'will_paginate-purecss'` to your `Gemfile` (and then run `bundle install`).

## Usage

### Rails

  1. Load the Pure CSS in your template.
  2. In your view, use the `renderer: PurecssPagination::Rails` option with the `will_paginate` helper, for example:

```erb
<%= will_paginate @collection, renderer: PurecssPagination::Rails %>
```

### Sinatra

  1. Load the Pure CSS in your template.
  2. `require "will_paginate-purecss"` in your Sinatra app.
  3. In your view, use the `renderer: PurecssPagination::Sinatra` option with the `will_paginate` helper, for example:

```erb
<%= will_paginate @collection, renderer: PurecssPagination::Sinatra %>
```

## Compatibility

<table>
	<tr>
		<th>Ruby</th>
		<td>>= 1.9.2</td>
	</tr>
	<tr>
		<th>will_paginate</th>
		<td>>= 3.0.3</td>
	</tr>
	<tr>
		<th>Pure</th>
		<td>>= 0.5.0</td>
	</tr>
</table>

## License

MIT-License
