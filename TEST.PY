from flask import *
# initialize the application 
app=Flask(__name__)
# define route/endpoint
@app.route("/api/events")
# define the function 
def event():  
    return jsonify({"message":"Upcoming events"})
@app.route("/api/library")
def library():
    return jsonify({"message":" Library resources available"})  
@app.route("/api/addition",methods=["post"])  
def addition():
        number1=request.form["number1"]
        number2=request.form["number2"]
        ans=int(number1)+int(number2)
        return jsonify({"Answer":ans})
@app.route("/api/subtract",methods=["post"]) 
def subtract():
        number3=request.form["number3"]
        number4=request.form["number4"]
        ans=int(number3)-int(number4)
        return jsonify({"Answer":ans})
@app.route("/api/multiplay",methods=["POST"])
def multiplay():
        number1=request.form["number1"]
        number2=request.form["number2"]
        ans=int(number1)*int(number2)
        return jsonify({"Answer":ans})
@app.route("/api/division",methods=["POST"])
def division():
        number1=request.form["number1"]
        number2=request.form["number2"]
        ans=int(number1)/int(number2)
        return jsonify({"Answer":ans})
# run the application 
app.run(debug=True)