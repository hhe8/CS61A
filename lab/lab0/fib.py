def fib(n):
	memo={0:0,1:1}
	def fib(n):
		if n not in memo:
			memo[n]=fib(n-1)+fib(n-2)
		return memo[n]
	return fib(n)


a={}
for i in range(10):
	a[i]=(fib(i))

class MITperson:

	def __init__(self,ID=0):
		self.ID=1912931
	def __str__(self):
		return str(self.ID)+' is the studentID'

def is_palindrome(string):
	'''
	A='122'
	B='121'
	is_palindrome(A)
	>>>False
	is_palindrome(B)
	>>>True
	'''
	if len(string)==1:
		return True
	else:
		string=string[1:len(string)-1]
		return string[0]==string[len(string)-1] and is_palindrome(string) 

B='12313222222'
C='12321'
D='1'
#print(is_palindrome(B))
#print(is_palindrome(C))
#print(is_palindrome(D))
#A=MITperson()
#print (A)

def cascade(string):
	if len(string) == 1:
		print (string)
	else:
		print (string)
		cascade(string[1:len(string)-1])
		print (string)

cascade(C)

