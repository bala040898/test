<!DOCTYPE html>
<html>
<head>
<style>
 
div#memory_board{
	background:#CCC;
	border:#999 7px solid red;
	width:500px;
	height:500px;
	padding:14px;
	margin:0px auto;
        board-align:center;
}
div#memory_board > div{
	background:(tile_bg.jpg) no-repeat;
	border:#000 1px solid;
	width:61px;
	height:61px;
	float:left;
	margin:10px;
	padding:20px;
	font-size:64px;
	cursor:pointer;
	text-align:center;
}
body
{
background-color:#399;
 background-image:url("images.png");
 
 background-repeat:no-repeat;
 
   background-size:cover;
  
}
</style>

<script>
 var matches=0;
var memory_array=[1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8]
var memory_values = [];
var memory_tile_ids = [];
var tiles_flipped = 0;

Array.prototype.memory_tile_shuffle = function(){
    var i = this.length, j, temp;
    while(--i > 0){
        j = Math.floor(Math.random() * (i+1));
        temp = this[j];
        this[j] = this[i];
        this[i] = temp;
    }
}
function newBoard(){
	tiles_flipped = 0;
	var output = '';
    memory_array.memory_tile_shuffle();
	for(var i = 0; i < memory_array.length; i++){
		output += '<div id="tile_'+i+'" onclick="memoryFlipTile(this,\''+memory_array[i]+'\')"></div>';
	}
	document.getElementById('memory_board').innerHTML = output;
}

function memoryFlipTile(tile,val){
	if(tile.innerHTML == "" && memory_values.length < 2){
		tile.style.background = '#FFF';
		tile.innerHTML = val;
		if(memory_values.length == 0){
			memory_values.push(val);
			memory_tile_ids.push(tile.id);
		} else if(memory_values.length == 1){
			memory_values.push(val);
			memory_tile_ids.push(tile.id);
			if(memory_values[0] == memory_values[1]){
				tiles_flipped += 2;

                  
				
				memory_values = [];
            	                 memory_tile_ids = [];
				// Check to see if the whole board is cleared
				if(tiles_flipped == memory_array.length){
					alert("GAME OVER,U WANT  TO START ANOTHER GAME");
                                    document.getElementById('memory_board').innerHTML = "";
					newBoard();

				

}
			
}
 else

 {
				
function flip2Back()
{ var tile_1 = document.getElementById(memory_tile_ids[0]);
  var tile_2 = document.getElementById(memory_tile_ids[1]);
				   
 tile_1.style.background = 'url(tile_bg.jpg) no-repeat';
            	  
 tile_1.innerHTML = "";
			
 tile_2.style.background = 'url(tile_bg.jpg) no-repeat';
            	  
  tile_2.innerHTML = "";
				  
  memory_values = [];
            	   
 memory_tile_ids = [];
				
}
				
setTimeout(flip2Back, 7);
			
}
		
}
	
}

}
</script>
<body>
<b style="font-size:50px;text-align=center;">&nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp    &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp  &nbsp    MEMORY GAME</b>
<div id="memory_board"></div>
<script>newBoard();</script>

</body>
</html>
