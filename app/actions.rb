def humanized_time_ago(time_ago_minutes)
	if time_ago_minutes >=60
		"#{time_ago_minutes/60}m"
	else
		"#{time_ago_minutes}h"
	end
end 

get '/' do
	@post_shark={
		username:"sharky_j",
		avatar_url:"http://naserca.com/images/sharky_j.jpg",
		photo_url: "http://naserca.com/images/shark.jpg",
		humanized_time_ago:humanized_time_ago(15),
		like_count: 0,
	    comment_count:1,
	    comments:[{
	    	username:"sharky_j",
	    	test:"out for the long weekend!"
	    }]
		
	}
	
	@post_whale={
		username:"kirk_whalum",
		avatar_url:"http://naserca.com/images/kirk_whalum.jpg",
		photo_url:"http://naserca.com/images/whale.jpg",
		humanized_time_ago:humanized_time_ago(65),
		like_count:0,
	    comment_count:1,
	    comments:[{
	    	username:"kirk_whalum",
	    	test:"#weekendvibes"
	    }]
		
	}
	
	@post_marlin={
		username:"marlin_peppa",
		avatar_url:"http://naserca.com/images/marlin_peppa.jpg",
		photo_url:"http://naserca.com/images/marlin.jpg",
		humanized_time_ago:humanized_time_ago(190),
		like_count:0,
	    comment_count:1,
	    comments:[{
	    	username:"marlin_peppa",
	    	test:"#lunchtime!"
	    }]
		
	}
	@posts=	[@post_shark,@post_whale,@post_marlin]
	erb :index
end
