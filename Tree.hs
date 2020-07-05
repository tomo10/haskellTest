data Tree = Leaf | Node Int Tree Tree deriving Show

treeDepth :: Tree -> Int
treeDepth Leaf = 0
treeDepth (Node _ leftSubtree rightSubtree) = 
  1 + max (treeDepth leftSubtree) (treeDepth rightSubtree)

-- exampple ghci =>    treeDepth (Node 2 (Node 1 Leaf Leaf) (Node 5 Leaf Leaf))



