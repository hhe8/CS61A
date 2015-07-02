class Account:
    """A bank account that has non-negative balance."""
    interest = 0.02
    def __init__(self, account_holder):
        self.balance = 0
        self.holder = account_holder
    
    def deposit(self, amount):
        self.balance = self.balance + amount
        return self.balance
    
    def withdraw(self,amount):
        if self.balance - amount < 0:
            return 'Insufficient funds'
        self.balance = self.balance - amount
        return self.balance

class CheckingAccount(Account):
    withdraw_charge = 1
    interest = 0.01
    def withdraw(self,amount):
        return Account.withdraw(self,amount + self.withdraw_charge)

class SavingAccount(Account):
    deposit_charge = 2
    def deposit(self,amount):
        return Account.deposit(self,amount-self.deposit_charge)

class AsSeenOnTVAccount(CheckingAccount, SavingAccount):
    def __init__(self,account_holder):
        self.holder= account_holder
        self.balance = 1

# interesting fact: use  c.__name__ for cin AsSeenOnTVAccount.mro() to see athe ordering of the class that were looked up.
        
            
