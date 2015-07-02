empty = 'empty'

def is_link(s):
	return s == empty or (len(s) == 2 and is_link(s[1]))

def link(first,rest):
	assert is_link(rest), "rest must be a linked list."
	return [first,rest]

def first(s):
	assert is_link(s), "not a linked list"
	return s[0]

def rest(s):
	assert is_link(s), "not a linked list"
	return s[1]

def len_link(s):
	if s == empty:
		return 0
	else:
		return len_link(rest(s))+1

def getitem_link(s,i):
	if s == empty:
		return None
	if i == 0: 
		return first(s)
	else:
		return getitem_link(rest(s),i-1)

four = [1,[2,[3,[4,empty]]]]
b=len_link(four)
a=getitem_link(four,5)

def extend_link(s,t):
	if s == empty:
		return t
	else:
		return link(first(s),extend_link(rest(s),t))

three = [5,[6,[7,empty]]]
c = extend_link(four,three)

def map_link(f,s):
	assert is_link(s),"not a link"
	if s == empty:
		return empty
	else:
		return link(f(first(s)) , map_link(f,rest(s)))

f = lambda x: x*x
d = map_link(f,four)


def keep_if_link(f,s):
	assert is_link(s), "not a link"
	if s == empty:
		return empty
	else:
		if f(first(s)) == True:
			return link(first(s),keep_if_link(f,rest(s)))
		else:
			return keep_if_link(f,rest(s))

e = keep_if_link(lambda x:x%2==0 , four)

def join_link(s,separator):
	# return a string of all elements in a separated by separator.
	assert is_link(s), "not a link"
	if s == empty:
		return ''
	elif rest(s) == empty:
		return str(first(s))	 
	else:
		return str(first(s))+separator+join_link(rest(s),separator)

f = join_link(four,', ')		



