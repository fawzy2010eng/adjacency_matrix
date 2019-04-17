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
n0=Node(0)
n1=Node(1)
n2=Node(2)
n3=Node(3)
n4=Node(4)
g.addnode(n0)
g.addnode(n1)
g.addnode(n2)
g.addnode(n3)
g.addnode(n4)
a=np.array(adjecency_matrix)
edgeA=Edge(n0,n1,2)
edgeB=Edge(n1,n3,2)
edgeC=Edge(n3,n4,9)
edgeD=Edge(n2,n4,13)
edgeE=Edge(n2,n1,15)
edgeF=Edge(n2,n0,3)
g.addedeg(edgeA)
g.addedeg(edgeB)
g.addedeg(edgeC)
g.addedeg(edgeD)
g.addedeg(edgeE)
g.addedeg(edgeF)
print(a[:a.__len__()-1])
