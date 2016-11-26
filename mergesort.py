#coding=utf-8
#/usr/bin/env python
"mergesort"
N =[1,2,3,4,2,3,4,3,5,23]

def mergesort(seq):
    mid = len(seq) // 2
    left,right = seq[:mid],seq[mid:]
    if len(left)>1: left= mergesort(left)
    if len(right)>1:right=mergesort(right)
    res =[]
    while left and right:
        if left[-1] >= right[-1]:
            res.append(left.pop())
        else:
            res.append(right.pop())
    res.reverse()         
    return left+right+res

if __name__=="__main__":
   print mergesort(N)
	