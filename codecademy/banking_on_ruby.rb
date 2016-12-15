class Account
    
    attr_reader :name, :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end
    
    def display_balance(pin_number)
        pin_number == pin ? (puts "Balance: $#{@balance}") : pin_error
    end

    def deposit(pin_number, amount)
        if pin_number == pin
            @balance += amount
            puts "Deposit #{amount}. New balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    def withdraw(pin_number, amount)
        if pin_number == pin

            if amount <= @balance
                @balance -= amount
                puts "Withdrew #{amount}. New balance: $#{@balance}."
            else
                puts "Overdraft ($#{@balance - amount}) isn't accepted for your account!"
                puts "Your current balance is: $#{@balance}"
            end

        else
            puts pin_error
        end
    end
    
    private
    def pin
        @pin = 1234
    end
    
    def pin_error
        return 'Access denied: incorrect PIN.'
    end
    
end

class CheckingAccount < Account; end


checking_account = Account.new('bestel')
checking_account.withdraw(1234, 200)