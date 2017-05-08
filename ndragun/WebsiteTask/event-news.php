					<!--START UPDATES-->
					<div class="news-list event-news" style="display:none;">
						<ul class="news-box">
<?php
    
    $rss_url = 'http://evilempire.website/forum/feed.php?f=4';
    $api_endpoint = 'https://api.rss2json.com/v1/api.json?rss_url=';
    $data = json_decode( file_get_contents($api_endpoint . urlencode($rss_url)) , true );

    
    if($data['status'] == 'ok'){     

        foreach ($data['items'] as $item) {
            echo "<li>";
            echo "<h3 class='tit'><strong>{$item['title']}</strong></h3>";
            echo "<span class='author'>Author: <i>{$item['author']}</i></span>";
            echo "<p class='type'>{$item['description']}</p>";
            echo "Check this thread on forum: <i><a href='{$item['guid']}'>Click Here</a></i><hr>";
            echo "</li>";
        }
       }
       ?>
									                       
								                    </ul>
						<div class="pages" style="display:none;" data-fn="pagination" data-config="items: .event-news li;prev: .pages .prev;next: .pages .next;perPage:3;">
	                         <a href="javascript:;" class="prev">&larr;PREV</a>
	                         <a href="javascript:;" class="next">NEXT&rarr;</a>
	                    </div>
					</div>
					<!--END UPDATES-->