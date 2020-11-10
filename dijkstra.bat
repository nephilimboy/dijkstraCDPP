simu -mdijkstraMA.ma -t10:00:00:000 -ldijkstra.log
pause
drawlog -mdijkstraMA.ma -cdijkstra -ldijkstra.log > dijkstra.drw
pause
::Graflog -v -e10 -fdijkstra.drw -cdijkstra.col
::pause


