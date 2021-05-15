import mysql.connector
from datetime import date , timedelta

def addUserdetails(Ee, Pp, Nn):
    cnx = mysql.connector.connect(user='root', password='root',host='127.0.0.1',database='hello_fresh')
    cursor = cnx.cursor()
    add_user = ("INSERT INTO user_details (email_id, user_name, password) VALUES (%s, %s, %s)")
    data_user = (Ee, Nn, Pp)
    cursor.execute(add_user,data_user)
    print(cursor._executed)
    cnx.commit()
    cnx.close()

def checkUserdetails(Ee, Pp):
    cnx = mysql.connector.connect(user='root', password='root',host='127.0.0.1',database='hello_fresh')
    cursor = cnx.cursor()
    add_user = ("Select password from user_details where email_id = '{}'".format(Ee))
    cursor.execute(add_user)
    myresult = cursor.fetchone()
    print(cursor._executed)
    cnx.close()
    if myresult[0] == Pp :
        return True
    else :
        return False

def getProducts() :
    cnx = mysql.connector.connect(user='root', password='root',host='127.0.0.1',database='hello_fresh')
    cursor = cnx.cursor()
    add_user = ("Select * from product")
    cursor.execute(add_user)
    myresult = cursor.fetchall()
    print(cursor._executed)
    for result in myresult :
        print(result)
    cnx.close()
    return myresult

def getProductsforCart(productName) :
    cnx = mysql.connector.connect(user='root', password='root',host='127.0.0.1',database='salon_service')
    cursor = cnx.cursor()
    add_user = ("Select * from product where name = '{}'".format(productName))
    cursor.execute(add_user)
    myresult = cursor.fetchone()
    print(cursor._executed)
    cnx.close()
    return myresult


def addBillingInfo(form,emailid):
    cnx = mysql.connector.connect(user='root', password='root',host='127.0.0.1',database='salon_service')
    cursor = cnx.cursor()
    add_user = ("INSERT INTO billinginfo (EmailId, Address,City,State,Zip,FullName) VALUES (%s, %s,%s, %s,%s, %s)")
    data_user = (emailid, form["address"],form["city"],form["state"],form["zip"],form["firstname"])
    cursor.execute(add_user,data_user)
    print(cursor._executed)
    cnx.commit()
    cnx.close()

def addPaymentInfo(form,emailid):
    cnx = mysql.connector.connect(user='root', password='root',host='127.0.0.1',database='salon_service')
    cursor = cnx.cursor()
    add_user = ("INSERT INTO payment_info (EmailId, NameOnCard,CreditCardNumber,ExpMonth,ExpYear) VALUES (%s, %s,%s, %s,%s)")
    data_user = (emailid, form["cardname"],form["cardnumber"],form["expmonth"],form["expyear"])
    cursor.execute(add_user,data_user)
    print(cursor._executed)
    cnx.commit()
    cnx.close()

def addBookingInfo(form,emailid,bookingNumber):
    cnx = mysql.connector.connect(user='root', password='root',host='127.0.0.1',database='salon_service')
    cursor = cnx.cursor()
    add_user = ("INSERT INTO bookingdetails (EmailId, ServiceType,AppointmentDate,AppointmentTime) VALUES (%s, %s,%s, %s)")
    data_user = (emailid,form["service"],form["bookingDate"],form["appt"])
    cursor.execute(add_user,data_user)
    print(cursor._executed)
    cnx.commit()
    cnx.close()

def addQueryInfo(form,emailid):
    cnx = mysql.connector.connect(user='root', password='root',host='127.0.0.1',database='salon_service')
    cursor = cnx.cursor()
    add_user = ("INSERT INTO query_details (EmailId, ServiceType,Query) VALUES (%s, %s,%s)")
    data_user = (emailid,form["service"],form["query"])
    cursor.execute(add_user,data_user)
    print(cursor._executed)
    cnx.commit()
    cnx.close()

def addOrderInfo(form,session,OrderNumber):
    today = date.today().strftime('%A %d %B %Y')
    cnx = mysql.connector.connect(user='root', password='root',host='127.0.0.1',database='salon_service')
    cursor = cnx.cursor()
    add_user = ("INSERT INTO order_details (EmailId,OrderNumber,TotalAmount,OrderDate,ShippingDate) VALUES (%s, %s,%s, %s,%s)")
    data_user = (session["emailId"],OrderNumber,session["total_cart_amt"],today,session["shippingDate"])
    cursor.execute(add_user,data_user)
    print(cursor._executed)
    cnx.commit()
    cnx.close()

