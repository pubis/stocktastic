var SearchIndex = 
[
	{
		"name": "Stocktastic",
		"link": "Stocktastic.html",
		"snippet": "",
		"type": "normalmodule"
	},
	{
		"name": "Stocktastic::Adapter",
		"link": "Stocktastic/Adapter.html",
		"snippet": "",
		"type": "normalmodule"
	},
	{
		"name": "Stocktastic::Adapter::Base",
		"link": "Stocktastic/Adapter/Base.html",
		"snippet": "<p>Abstract base class for adapters\n",
		"type": "normalclass"
	},
	{
		"name": "Stocktastic::Adapter::Yahoo",
		"link": "Stocktastic/Adapter/Yahoo.html",
		"snippet": "<p>Adapter for interfacing with Yahoo finance\n",
		"type": "normalclass"
	},
	{
		"name": "Stocktastic::Base",
		"link": "Stocktastic/Base.html",
		"snippet": "<p>Main class for integrating with Stocktastic.\n\n<pre>stocktastic = Stocktastic::Base.new\nquote = stocktastic.quote(&#39;AAPL&#39;)</pre>\n",
		"type": "normalclass"
	},
	{
		"name": "default_adapter",
		"link": "Stocktastic.html#method-c-default_adapter",
		"snippet": "<p>Default adapter through which quotes are fetched.\n",
		"type": "anymethod"
	},
	{
		"name": "get_single_quote",
		"link": "Stocktastic/Adapter/Yahoo.html#method-i-get_single_quote",
		"snippet": "<p>Fetches quote details for a single symbol. Last argument can specify\noptions:\n<p>:parameters Array of parameters …\n\n",
		"type": "anymethod"
	},
	{
		"name": "get_multiple_quotes",
		"link": "Stocktastic/Adapter/Yahoo.html#method-i-get_multiple_quotes",
		"snippet": "<p>Fetches quote details for multiple symbols. Last argument can specify\noptions:\n<p>:parameters Array of parameters …\n\n",
		"type": "anymethod"
	},
	{
		"name": "new",
		"link": "Stocktastic/Base.html#method-c-new",
		"snippet": "<p>Construct a new Stocktastic::Base object using the specified\n<code>adapter</code>. If no <code>adapter</code> is passed the\n<code>default_adapter</code> …\n",
		"type": "anymethod"
	},
	{
		"name": "quote",
		"link": "Stocktastic/Base.html#method-i-quote",
		"snippet": "<p>Fetch quote information for a single symbol.\n\n<pre class=\"ruby\"><span class=\"ruby-identifier\">quote</span> = <span class=\"ruby-identifier\">stocktastic</span>.<span class=\"ruby-identifier\">quote</span>(<span class=\"ruby-string\">&#39;AAPL&#39;</span>)\n<span class=\"ruby-comment\"># =&gt; {:symbol =&gt; &#39;AAPL&#39;, ...</span>\n</pre>\n",
		"type": "anymethod"
	},
	{
		"name": "quotes",
		"link": "Stocktastic/Base.html#method-i-quotes",
		"snippet": "<p>Fetch quote information for many symbols.\n\n<pre class=\"ruby\"><span class=\"ruby-identifier\">quotes</span> = <span class=\"ruby-identifier\">stocktastic</span>.<span class=\"ruby-identifier\">quotes</span>([<span class=\"ruby-string\">&#39;AAPL&#39;</span>, <span class=\"ruby-string\">&#39;GOOG&#39;</span>])\n<span class=\"ruby-comment\"># =&gt; [{:symbol ...</span>\n</pre>\n",
		"type": "anymethod"
	},
	{
		"name": "History",
		"link": "History_rdoc.html",
		"snippet": "<p>0.1.0 / 2014-08-16\n<p>Added Stocktastic::Base for main Stocktastic usage. It uses the Yahoo\nadapter by default …\n",
		"type": "toplevel"
	},
	{
		"name": "Manifest",
		"link": "Manifest_txt.html",
		"snippet": "<p>.autotest History.rdoc Manifest.txt README.rdoc Rakefile bin/stocktastic\nlib/stocktastic.rb test/test_stocktastic.rb …\n",
		"type": "toplevel"
	},
	{
		"name": "README",
		"link": "README_rdoc.html",
		"snippet": "<p>stocktastic\n<p>github.com/pubis/stocktastic\n\n<p>Description\n",
		"type": "toplevel"
	}
]
;
