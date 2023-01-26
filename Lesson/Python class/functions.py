
def simpleInterest(principal, rate, time):
    if (principal >= 0 and rate >= 0 and time >= 0):
        si = (principal*rate*time)/100
        stringedAnswer=None
        return stringedAnswer.toString(si)
    else:
        return "ValueError"

print(f"Simple Interest: {simpleInterest(3000,0,3)}")


    
