def tree(root,branches = []):
	for branch in branches:
		assert is_tree(branch) , 'branches must be trees'
	return [root] + list(branches)

def root(tree):
	return tree[0]

def branches(tree):
	return tree[1:]

def is_tree(tree):
	if type(tree)!=list or len(tree) < 1:
		return False
	for branch in branches(tree):
		if not is_tree(branch):
			return False
	return True
	
def is_leaf(tree):
	return not branches(tree)

def fib_tree(n):
	if n == 0 or n == 1:
		return tree(n)
	else:
		left , right = fib_tree(n-2) , fib_tree(n-1)
		return tree(root(left)+root(right),[left,right])

a = fib_tree(6)


def count_leaves(tree):
	if is_leaf(tree):
		return 1
	else:
		result = 0
		for branch in branches(tree):
			result += count_leaves(branch)
		return result
		
def partition_tree(n,m):
	if n == 1:
		return tree(n)
	else:
		left = partition_tree(n-m,m)
		right = partition_tree(n,m-1)
		return tree(m,[left,right])



(5,3)
(3,partition_tree(2,3)) , (2, partition_tree(3,2))

