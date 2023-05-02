# GCN
Using python to scrape Youtube data, SQL to create powerful views and visualised in PowerBI
This has been a great project for me, encompassing my love of cycling, with developing skills in Python, SQL and PowerBI

Using the Youtube API in Python, I scraped data from one of my favourite Youtube Channels, GCN. This API is very user friendly, but does have some challenges, which I
embraced and learned from, such as duration of youtube videos is not stored in the same category as other basic data such as upload time, date or even title. It
is also stoed in an ISO_8601 format which needs to be converted to a standard hours:minutes to be accessible to anybody unfamiliar with it, also for visualisation tools.

I then performed further cleaning on the data and created a dataframe which I could work on further using more familiar tools in SQL in order to find some key metrics.

Videos are viewed, and interacted with at different levels, and I wanted to be able to drill into how this changes over time, and factors which may affect this.
I specifically asked the question: 

Do video titles which contain a question get more views or interactions?

The answer is yes. Videos with questions have always tracked with slightly more views, and since 2022 have started to also receive more interactions. I chose to weight
a comment as 10x to a like, to give an interaction score for each video, based on this score/views. 

I also asked: 

When is best to post a video?

It would appear, the best time is 4pm on a sunday, and 4pm any day is a  great time, in order to receive the most likes, and the most views, also the 10am slot has a
strong viewership throughout the week. I would look at people arriving at work, getting through their emails or taking a little break at 10am, also as things start to
wind down at 4pm, and of course school has generally finished. Tuesday, especially in the afternoon is the worst day to post a video, maybe these could be promoted more.

Top Presenters

I scraped the tags from the top 200 videos to see which presenter was getting the most interactions, with Dan and Manon clear leaders. This same data could be used to
look at other oopular hashtags, but with the presenters being such an important part of the channel, I was interested to look into this metric. Interestingly, there were
also 2 videos with no tags at all, whethert his was an oversight or a test, it may be worth double checking this in future uploads.

Finally, I formatted a dashboard using the GCN colour palette to make the visuals pop and link everything back to the original data.
