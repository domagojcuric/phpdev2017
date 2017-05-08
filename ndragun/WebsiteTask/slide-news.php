				<div class="mid">
					 <ul> <p class="tit">Recent Topics</p>
																			        <li>
<?php
    
    $rss_url = 'http://evilempire.website/forum/feed.php?f=2';
    $api_endpoint = 'https://api.rss2json.com/v1/api.json?rss_url=';
    $data = json_decode( file_get_contents($api_endpoint . urlencode($rss_url)) , true );
    $i=0;
    $limit=3;
    
    if($data['status'] == 'ok'){     

        foreach ($data['items'] as $item) {
            echo "<li>";
            echo "<span class'slide-news'><a href='{$item['guid']}'>- {$item['title']}</a></span>";
            echo "</li>";
            if (++$i >=$limit) break;
        }
       }
       ?>
                                                                                                                                                                    <?php
    
    $rss_url = 'http://evilempire.website/forum/feed.php?f=3';
    $api_endpoint = 'https://api.rss2json.com/v1/api.json?rss_url=';
    $data = json_decode( file_get_contents($api_endpoint . urlencode($rss_url)) , true );
    $i=0;
    $limit=3;
    
    if($data['status'] == 'ok'){     

        foreach ($data['items'] as $item) {
            echo "<li>";
            echo "<span class'slide-news'><a href='{$item['guid']}'>- {$item['title']}</a></span>";
            echo "</li>";
            if (++$i >=$limit) break;
        }
       }
       ?>
                                                                                                                                                                    <?php
    
    $rss_url = 'http://evilempire.website/forum/feed.php?f=4';
    $api_endpoint = 'https://api.rss2json.com/v1/api.json?rss_url=';
    $data = json_decode( file_get_contents($api_endpoint . urlencode($rss_url)) , true );
    $i=0;
    $limit=3;
    
    if($data['status'] == 'ok'){     

        foreach ($data['items'] as $item) {
            echo "<li>";
            echo "<span class'slide-news'><a href='{$item['guid']}'>- {$item['title']}</a></span>";
            echo "</li>";
            if (++$i >=$limit) break;
        }
       }
       ?>
																		 </ul>
				</div>