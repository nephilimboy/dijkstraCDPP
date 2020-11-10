Modeling Dijkstra Algorithm Using CD++ (Cell-Devs)
===================================================
Routing protocols have become an essential component in today's networks. 
These protocols are used to select paths for traffic between network nodes by using routing algorithms. 
Since the computer network can be modeled by a graph, the graph theory is widely used in routing algorithms. 
The routing algorithms are classified into two categories as follow:

- Adaptive
    - The routing decisions may select a new route for each packet in response to changes in the condition and topology of the networks.
- Non-adaptive
    - The routing decisions are not based on traffic, topology, or the current state of the network

In this project, one of the non-adaptive routing algorithms called shortest 
path routing (Dijkstra’s Algorithm) will be modeled by using Cell-DEVS.

Dijkstra’s Algorithm 
------------------------
This algorithm finds the shortest paths from a given source node to all other nodes (include destination node) starts from the source node and finds the nearest adjacent node. 
At the first iteration, the algorithm finds the nearest node from the source node which must be a neighbor of the source node. 
At the second iteration, the  algorithm  finds  the  second-closest  node  from  the  source  node. This  process  will continue until all nodes are processed by the algorithm. 
During each iteration, the algorithm calculates the distance (cost) of each node from the source  node. Later  on, the algorithm  uses these costs to  find the shortest path to the destination.
- Useful links
    - https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm
    - http://cs.gettysburg.edu/~jfink/courses/cs322slides/3-19.pdf
    - https://thiloshon.wordpress.com/2017/04/03/dijkstras-algorithm-for-path-finding-problems/

### Project main reference
- Adamatzky, A. I. "Computation of shortest path in cellular automata." Mathematical and Computer Modelling 23.4 (1996): 105-113. 

### Project layout 

```
dijkstraCDPP
├── Tests  //Test folder for different scenarios
│   ├── CircularMaze
│   │   ├── dijkstraMA.ma
│   │   ├── dijkstraMALOG.log
│   │   └── maze.pal
│   ├── NoWalls
│   │   ├── dijkstraMA.ma
│   │   ├── dijkstraMADRW.drw
│   │   ├── dijkstraMALOG.log
│   │   └── noWalls.pal
│   ├── SimpleMaze
│   │   ├── dijkstraMA.ma
│   │   ├── dijkstraMADRW.drw
│   │   ├── dijkstraMALOG.log
│   │   └── palette.pal
│   └── SimpleOneColumnMaze
│   │   ├── dijkstraMA.ma
│   │   ├── dijkstraMADRW.drw
│   │   ├── dijkstraMALOG.log
│   │   └── OneColumn.pal
├── dijkstraCDPP.iml
├── dijkstraMA.ma
├── dijkstraMA.madesigner
├── dijkstraMA.maml
├── dijkstraMADRW.drw
├── dijkstraMALOG.log
├── notes1.txt
└── README.md
```


### Requirements 
- Cd++
    - http://cell-devs.sce.carleton.ca/mediawiki/index.php/Main_Page


### YouTube Video
- https://youtu.be/nZAGyJ9xwyk
- https://youtu.be/Aux7o-MXFU8



