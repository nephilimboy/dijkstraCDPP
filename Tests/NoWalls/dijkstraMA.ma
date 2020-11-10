

[top]
components : dijkstra

[dijkstra]
type : cell
width : 7
height : 7
delay : transport
defaultDelayTime : 100
border : nowrapped 
neighbors :             dijkstra(-1,0)  
neighbors : dijkstra(0,-1)  dijkstra(0,0)  dijkstra(0,1)
neighbors :             dijkstra(1,0)  
initialvalue : 0

initialCellsValue : dijkstra.val

localtransition : dijkstra-rule


[dijkstra-rule]
%Finding weights
rule : { (-1,0) + 1 } 100 { (0,0) < (-1,0) and (0,0) = 0 and (-1,0) != 9999999} 
rule : { (0,1) + 1 } 100 {(0,0) < (0,1) and (0,0) = 0  and (0,1) != 9999999} 
rule : { (0,-1) + 1 } 100 {(0,0)< (0,-1) and (0,0) = 0  and (0,-1) != 9999999} 
rule : { (1,0) + 1 } 100 {(0,0) < (1,0) and (0,0) = 0 and (1,0) != 9999999} 


%Finding the path

% (0,0)=-1 is in the midle
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) = -1 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0 } 
% (0,0)=-1 is on the edges
rule : {min(min((0,1),(0,-1)),(1,0)) * 100000} 100 {(0,0) = -1 and (-1,0)=? and (0,1)>0 and (0,-1)> 0 and (1,0)> 0 }
rule : {min(min((-1,0),(0,-1)),(1,0)) * 100000} 100 {(0,0) = -1 and (-1,0)>0 and (0,1)=? and (0,-1)> 0 and (1,0)> 0 }
rule : {min(min((-1,0),(0,1)),(1,0)) * 100000} 100 {(0,0) = -1 and (-1,0)>0 and (0,1)>0 and (0,-1)=? and (1,0)> 0 }
rule : {min(min((-1,0),(0,1)),(0,-1)) * 100000} 100 {(0,0) = -1 and (-1,0)>0 and (0,1)>0 and (0,-1)>0 and (1,0)=? }
% (0,0)=-1 is on the corners
% Top Left
rule : {min((0,1),(1,0)) * 100000} 100 {(0,0) = -1 and (-1,0)=? and (0,1)>0 and (0,-1)=? and (1,0)> 0 }
% Top Right
rule : {min((0,-1),(1,0)) * 100000} 100 {(0,0) = -1 and (-1,0)=? and (0,1)=? and (0,-1)>0 and (1,0)> 0 }
% Bottom  Left
rule : {min((-1,0),(0,1)) * 100000} 100 {(0,0) = -1 and (-1,0)>0 and (0,1)>0 and (0,-1)=? and (1,0)=? }
% Bottom  Right
rule : {min((-1,0),(0,-1)) * 100000} 100 {(0,0) = -1 and (-1,0)>0 and (0,1)=? and (0,-1)>0 and (1,0)=? }



% Other Cell except (0,0) = -1 and the cell is in the middle
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and max(max(max((-1,0),(0,1)),(0,-1)),(1,0))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0} 
% (0,0)=-1 is on the edges
rule : {min(min((0,1),(0,-1)),(1,0)) * 100000}  100 {(0,0) != 1 and max(max((0,1),(0,-1)),(1,0))/(0,0) = 100000 and (-1,0)=? and (0,1)>0 and (0,-1)> 0 and (1,0)> 0 } 
rule : {min(min((-1,0),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and max(max((-1,0),(0,-1)),(1,0))/(0,0) = 100000 and (-1,0)>0 and (0,1)=? and (0,-1)> 0 and (1,0)> 0 }
rule : {min(min((-1,0),(0,1)),(1,0)) * 100000}  100 {(0,0) != 1 and max(max((-1,0),(0,1)),(1,0))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)=? and (1,0)> 0  }
rule : {min(min((-1,0),(0,1)),(0,-1)) * 100000} 100 {(0,0) != 1 and max(max((-1,0),(0,1)),(0,-1))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)>0 and (1,0)=?   }



% (0,0)=-1 is on the edges and hit the wall
% top left
rule : {min((0,1),(1,0)) * 100000}  100 {(0,0) != 1 and max((0,1),(1,0))/(0,0) = 100000 and (-1,0)=? and (0,1)>0 and (0,-1)=? and (1,0)> 0 } 
% top right
rule : {min((0,-1),(1,0)) * 100000} 100 {(0,0) != 1 and max((0,-1),(1,0))/(0,0) = 100000 and (-1,0)=? and (0,1)=? and (0,-1)> 0 and (1,0)> 0 }
% bottom left
rule : {min((-1,0),(0,1)) * 100000}  100 {(0,0) != 1 and max((-1,0),(0,1))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)=? and (1,0)=?  }
% bottom right
rule : {min((-1,0),(0,-1)) * 100000} 100 {(0,0) != 1 and max((-1,0),(0,-1))/(0,0) = 100000 and (-1,0)>0 and (0,1)=? and (0,-1)>0 and (1,0)=?}





% Other Cell except (0,0) = -1 and the cell is in the middle and hit the wall once
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (-1,0)=9999999 and max(max((0,1),(0,-1)),(1,0))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0} 
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (0,1)=9999999 and max(max((-1,0),(0,-1)),(1,0))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0}
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (1,0)=9999999 and max(max((0,1),(0,-1)),(-1,0))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0}
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (0,-1)=9999999 and max(max((0,1),(-1,0)),(1,0))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0}

% Other Cell except (0,0) = -1 and the cell is in the middle and hit the wall twice
% wall is top and right
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (-1,0)=9999999 and (0,1)=9999999  and max((1,0),(0,-1))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0} 
% wall is top and bottom
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (-1,0)=9999999 and (1,0)=9999999  and max((0,1),(0,-1))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0}
% wall is top and left
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (-1,0)=9999999 and (0,-1)=9999999  and max((0,1),(1,0))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0}

% wall is right and bottom
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (0,1)=9999999 and (1,0)=9999999  and max((-1,0),(0,-1))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0} 
% wall is right and left
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (0,1)=9999999 and (0,-1)=9999999  and max((-1,0),(1,0))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0}


% wall is bottom and left
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (1,0)=9999999 and (0,-1)=9999999  and max((-1,0),(0,1))/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0} 

% Other Cell except (0,0) = -1 and the cell is in the middle and hit the wall three times
% wall is top and bottom and right
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (-1,0)=9999999 and (1,0)=9999999 and (0,1)=9999999  and (0,-1)/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0} 

% wall is top and bottom and left
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (-1,0)=9999999 and (1,0)=9999999 and (0,-1)=9999999  and (0,1)/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0}


% wall is right and bottom and left
rule : {min(min(min((-1,0),(0,1)),(0,-1)),(1,0)) * 100000} 100 {(0,0) != 1 and (0,1)=9999999 and (1,0)=9999999 and (0,-1)=9999999  and (-1,0)/(0,0) = 100000 and (-1,0)>0 and (0,1)>0 and (0,-1)> 0 and (1,0)> 0}



% Stay the same
rule : {(0,0)} 100 { t } 