# Crawling-yahoo-prices

Unfortunately Yahoo has restricted the access to its finance info API. In the past, I used VBA in my personal spreadsheet to access download.yahoo bla bla bla API. But this came to a halt last Thursday.

I spent a good 2 hours on the following Saturday to create an interface plug-in to crawl prices from yahoo through R. And established the link to my exisiting spreasheet.

I'm unsure if this is the best solution but I managed to succesfully create a plug-in. The code literally went to each yahoo page for each ticker to get the following information,
-Prices
-P/E
-Div yield
-52 week range (high and low)

For 216 ticker symbols, it took around 9 mins to do so.

The loop is slighly inefficient here. I could have written a function, then used lapply as seen in my fortune info crawlers.

But I doubt that the for loop is the bottleneck. Hence, I didn't seek to optimise it.

PS: I suspect google finance might have a more efficient solution. Will try to explore that when I've time.
