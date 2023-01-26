pin = input("Please create a 4-digit pin: ")
while not (pin.isdigit() and len(pin) == 4):
    print("Invalid pin. Please enter a 4-digit pin.")
    pin = input("Please create a 4-digit pin: ")
print("Pin:", pin)
acc_balance = 0.00


def deposit_money(pin, acc_balance):
    enter_pin = input("Please enter your 4-digit pin: ")
    if enter_pin != pin:
        print("Invalid pin. Please try again.")
        return acc_balance
    deposit_amount = float(input("Enter the amount you would like to deposit: "))
    acc_balance = deposit_amount+acc_balance
    print("Deposit of $%.2f was successful." % deposit_amount)
    return acc_balance

def transfer_money(pin, acc_balance):
    enter_pin = input("Please enter your 4-digit pin: ")
    if enter_pin != pin:
        print("Invalid pin. Please try again.")
        return acc_balance
    transfer_amount = float(input("Enter the amount you would like to transfer: "))
    if transfer_amount > acc_balance:
        for i in range(3):
            print("Insufficient funds. Please enter a lower transfer amount.")
            transfer_amount = float(input("Enter the amount you would like to transfer: "))
            if transfer_amount <= acc_balance:
                break
        else:
            print("You have reached the maximum number of attempts.")
            return acc_balance

    acc_balance = acc_balance - transfer_amount
    print("Transfer of $%.2f was successful." % transfer_amount)
    return acc_balance



acc_balance = deposit_money(pin, acc_balance)
print(acc_balance)
acc_balance = transfer_money(pin, acc_balance)
