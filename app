import numpy as np
class Node:
    def __init__(self,number):
        self.number=number
    def setnumber(self):
        number=self.number
    def getnumber(self):
        return self.number
class Edge:
    def __init__(self,src,dest,weight):
        self.src=src
        self.dest=dest
        self.weight=weight

List=[]
adjecency_matrix=[List]
a=np.array(adjecency_matrix)
class grapgh:
    def __init__(self):
        self.name=None
    def addnode(self,Node):
        self.node=Node
        List.append(None)
        adjecency_matrix.append(List)
    def addedeg(self,edge):
        self.edge=Edge(edge.src,edge.dest,edge.weight)
        a[self.edge.src.number,self.edge.dest.number]=self.edge.weight
        a[self.edge.dest.number, self.edge.src.number] = self.edge.weight
        print(self.edge.src.number,self.edge.dest.number,self.edge.weight)



g=grapgh()
n1=Node(0)
n2=Node(1)
n3=Node(2)
n4=Node(3)
n5=Node(4)
g.addnode(n1)
g.addnode(n1)
g.addnode(n1)
g.addnode(n1)
g.addnode(n1)
a=np.array(adjecency_matrix)
edgeA=Edge(n1,n5,0)
edgeB=Edge(n1,n2,1)
edgeC=Edge(n3,n4,2)
edgeD=Edge(n1,n4,3)
edgeE=Edge(n2,n3,4)
g.addedeg(edgeA)
g.addedeg(edgeB)
g.addedeg(edgeC)
g.addedeg(edgeD)
g.addedeg(edgeE)
print(a[:a.__len__()-1])
