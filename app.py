from flask import Flask, render_template , request, redirect,session
import service
import os
from datetime import date , timedelta
from random import randint
app = Flask(__name__)


@app.route("/home_page", methods=["GET","POST"])
def home():
    if request.method == "POST":
        req = request.form
        Email=req.get("email")
        Password = req.get("psw")
        if service.checkUserdetails(Email,Password) :
            session["emailId"] = Email
            products = service.getProducts()
            session["items"] = products
            return render_template("fruit.html")
        return render_template("login.html")
    if request.method == "GET":

        return render_template("fruit.html")

@app.route("/")
def login():
    return render_template("login.html")

@app.route("/submit_sign_up", methods=["GET","POST"])
def submit_login():
     if request.method == "POST":
        print(request)
        req = request.form
        print(req)
        E = req.get("email")
        P = req.get("psw")
        N = req.get("name")
        print(E)
        print(P)
        print(N)
        service.addUserdetails(E,P ,N)
     return render_template("login.html")
@app.route("/sign_up")
def sign_up():
     return render_template("customer_sign_up.html")

@app.route("/makeup")
def makeup():
    products = service.getProducts("make_up")
    session["items"] = products
    return render_template("page2_makeup.html")



@app.route("/hair")
def hair():
    products = service.getProducts("hair")
    session["items"] = products
    return render_template("page3_hair_care.html")

@app.route("/nail")
def nail():
    products = service.getProducts("nail")
    session["items"] = products
    return render_template("page4_nail_care.html")

@app.route("/addCart", methods=["GET","POST"])
def addCart():
    if request.method == "POST":
        req = request.form
        code = req.get("code")
        print(code)
        product = service.getProductsforCart(code)
        session.modified = True
        print(session)
        cartItemexist = False
        for key in session.keys() :
            if "cartitems" == key :
                print(key)
                cartItemexist = True
        print(cartItemexist)
        if cartItemexist :
            session["cartitems"].append(product)
            print(session["cartitems"])
        else :
            items = []
            items.append(product)
            session["cartitems"] = items
        productTotal = 0
        for items in session['cartitems'] :
            productTotal = productTotal + items[4]
        session['productTotal'] = productTotal
        session['totalAmount'] = productTotal + 50.00
        if code.lower().startswith("make_up") :
           return render_template("page2_makeup.html")
        elif code.lower().startswith("hair") :
           return render_template("page3_hair_care.html")
        elif code.lower().startswith("nail") :
           return render_template("page4_nail_care.html")
@app.route("/cart")
def cart():
    today = (date.today()+ timedelta(5)).strftime('%A %d %B %Y')
    print("Today's date:", today)
    session["shippingDate"] = today
    return render_template("cart.html")

@app.route("/checkout", methods=["GET","POST"])
def checkout():
    if request.method == "POST":
        req = request.form
        print(req)
        session["shippingCharge"] = req.get("shipping_charge_in")
        session["total_cart_amt"] = req.get("total_cart_amt_in")
        session["product_total_amt"] = req.get("product_total_amt_in")
        return render_template("checkout_page.html")

@app.route("/order_confirmation", methods=["GET","POST"])
def orderConfirmation():
    if request.method == "POST":
        req = request.form
        print(req)
        service.addBillingInfo(req,session["emailId"])
        service.addPaymentInfo(req,session["emailId"])
        orderNumber = randint(10000000, 99999999)
        service.addOrderInfo(req,session,orderNumber)
        session['orderNumber'] = orderNumber
        session['orderDate'] =  date.today().strftime('%A %d %B %Y')
        session['customerName'] = req["firstname"]
        return render_template("order_confirmation.html")

@app.route("/bookService", methods=["GET","POST"])
def bookingService():
    if request.method == "POST":
        return render_template("bookingPage.html")

@app.route("/queryConfirm", methods=["GET","POST"])
def queryConfirmation():
    if request.method == "POST":
        req = request.form
        print(req)
        service.addQueryInfo(req,session["emailId"])
        session['name'] = req["username"]
        session['emailAddress'] = req["email"]
        session['service'] = req["service"]
        session['query'] = req["query"]
        return render_template("QueryConfirmation.html")

@app.route("/bookingConfirm", methods=["GET","POST"])
def bookingConfirmation():
    if request.method == "POST":
        req = request.form
        print(req)
        bookingNumber = randint(10000000, 99999999)
        service.addBookingInfo(req,session["emailId"],bookingNumber)
        session['bookingNumber'] = bookingNumber
        session['serviceType'] = req["service"]
        session['bookingDate'] = req["bookingDate"]
        return render_template("bookingConfirmation.html")
        
@app.route("/about_us")
def about():
    return render_template("about_us.html")

@app.route("/contact_us")
def contact():
    return render_template("contact_us.html")

@app.route("/fruit")
def fruit():
    return render_template("fruit.html")

if __name__ == "__main__":
    app.secret_key = os.urandom(24)
    app.run(debug = True, host = "127.0.0.1", port = 8000)