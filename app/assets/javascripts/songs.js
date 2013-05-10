$(function(){
	
	var song_table_rows = $('table#index tbody').find('tr');
	
	$('a.song_filter').on('click', function(e){
		
		var filter_value = $(this).data('song-filter');
		
		if ( filter_value === 'all'){
			song_table_rows.show();
		} else {
			$.each(song_table_rows, function(){
				var row_filter_value = $(this).data('song-filter');
				if ( row_filter_value === filter_value){
					$(this).show();
				} else {
					$(this).hide();
				}
			})
		}
		
		e.preventDefault();
		
	});
	
	song_table_rows.on('click', function(){
		var song_id = $(this).data('song-id');
		window.location.assign("/songs/" + song_id);
	});
	
})