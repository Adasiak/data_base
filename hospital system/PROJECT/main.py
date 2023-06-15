from flask import Flask,render_template,request,redirect,url_for,flash
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin
from werkzeug.security import generate_password_hash,check_password_hash
from flask_login import login_user,logout_user,login_manager,LoginManager
from flask_login import login_required,current_user


# MY db connection
local_server= True
app = Flask(__name__)
app.secret_key='hmsprojects'


# this is for getting unique user access
login_manager=LoginManager(app)
login_manager.login_view='login'


@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))


# app.config['SQLALCHEMY_DATABASE_URL']='mysql://username:password@localhost/databas_table_name'
app.config['SQLALCHEMY_DATABASE_URI']='mysql://root:@127.0.0.1:3306/hms3'
db=SQLAlchemy(app)


# here we will create db models that is tables
class Hospital(db.Model):
    hospital_id = db.Column(db.Integer, primary_key=True)
    hospital_name = db.Column(db.String(150), nullable=False)
    adres = db.Column(db.String(150))
    phone_number = db.Column(db.String(25))
    email = db.Column(db.String(150))


class Ward(db.Model):
    ward_id = db.Column(db.Integer, primary_key=True)
    ward_name = db.Column(db.String(150), nullable=False)
    building = db.Column(db.String(150))
    floor = db.Column(db.Integer)
    phone_number = db.Column(db.String(25))
    int_of_free_beds = db.Column(db.Integer)
    maximum_capacity = db.Column(db.Integer)
    hospital_hospital_id = db.Column(db.Integer, db.ForeignKey('hospital.hospital_id'), nullable=False)


class Patients(db.Model):
    pid=db.Column(db.Integer,primary_key=True)
    email=db.Column(db.String(50))
    name=db.Column(db.String(50))
    gender=db.Column(db.String(50))
    slot=db.Column(db.String(50))
    disease=db.Column(db.String(50))
    time=db.Column(db.String(50),nullable=False)
    date=db.Column(db.String(50),nullable=False)
    dept=db.Column(db.String(50))
    number=db.Column(db.String(50))
    ward_ward_id = db.Column(db.Integer, db.ForeignKey('ward.ward_id'), nullable=False)

class Doctors(db.Model):
    did=db.Column(db.Integer,primary_key=True)
    email=db.Column(db.String(50))
    doctorname=db.Column(db.String(50))
    dept=db.Column(db.String(50))
    ward_ward_id = db.Column(db.Integer, db.ForeignKey('ward.ward_id'), nullable=False)


class User(UserMixin,db.Model):
    id=db.Column(db.Integer,primary_key=True)
    username=db.Column(db.String(50))
    usertype=db.Column(db.String(50))
    email=db.Column(db.String(50),unique=True)
    password=db.Column(db.String(1000))
    
class Trigr(db.Model):
    tid=db.Column(db.Integer,primary_key=True)
    pid=db.Column(db.Integer)
    email=db.Column(db.String(50))
    name=db.Column(db.String(50))
    action=db.Column(db.String(50))
    timestamp=db.Column(db.String(50))


# here we will pass endpoints and run the fuction
@app.route('/')
def index():
    return render_template('index.html')
    

@app.route('/hospital',methods=['POST','GET'])
@login_required
def hospital(): 
    if current_user.usertype=="Admin":
        query=Hospital.query.all()
        return render_template('hospital.html',query=query)


@app.route('/wards',methods=['POST','GET'])
@login_required
def wards(): 
    if current_user.usertype=="Admin":
        query=Ward.query.all()
        return render_template('ward.html',query=query)


@app.route('/add_wards',methods=['POST','GET'])
def add_wards():
    if request.method=="POST":
        ward_name=request.form.get('ward_name')
        building=request.form.get('building')
        floor=request.form.get('floor')
        phone_number=request.form.get('phone_number')
        int_of_free_beds=request.form.get('int_of_free_beds')
        maximum_capacity=request.form.get('maximum_capacity')
        hospital_hospital_id=request.form.get('hospital_hospital_id')        
        
        query=Ward(
            ward_name=ward_name,
            building=building,
            floor=floor,
            phone_number=phone_number,
            int_of_free_beds=int_of_free_beds,
            maximum_capacity=maximum_capacity,
            hospital_hospital_id=hospital_hospital_id,
            )
        db.session.add(query)
        db.session.commit()
        flash("Information is Stored","primary")

    return render_template('addward.html')


@app.route('/showdoctors',methods=['POST','GET'])
def showdoctors():
    query=Doctors.query.all()
    return render_template('showdoctors.html',query=query)


@app.route('/doctors',methods=['POST','GET'])
def doctors():
    if request.method=="POST":
        email=request.form.get('email')
        doctorname=request.form.get('doctorname')
        dept=request.form.get('dept')
        ward_ward_id=request.form.get('wardid')
        
        query=Doctors(email=email,doctorname=doctorname,dept=dept,ward_ward_id=ward_ward_id)
        db.session.add(query)
        db.session.commit()
        flash("Information is Stored","primary")

    return render_template('doctor.html')


@app.route('/patients',methods=['POST','GET'])
@login_required
def patient():
    doct=Doctors.query.all()
    if request.method=="POST":
        email=request.form.get('email')
        name=request.form.get('name')
        gender=request.form.get('gender')
        slot=request.form.get('slot')
        disease=request.form.get('disease')
        time=request.form.get('time')
        date=request.form.get('date')
        dept=request.form.get('dept')
        number=request.form.get('number')
        ward_ward_id=request.form.get('ward_ward_id')
        if len(number)<10 or len(number)>10:
            flash("Please give 10 digit number")
            return render_template('patient.html',doct=doct)
        query=Patients(email=email,name=name,gender=gender,slot=slot,disease=disease,time=time,date=date,dept=dept,number=number, ward_ward_id=ward_ward_id)
        db.session.add(query)
        db.session.commit()
        flash("Booking Confirmed","info")
    return render_template('patient.html',doct=doct)


@app.route('/bookings')
@login_required
def bookings(): 
    em=current_user.email
    if current_user.usertype=="Doctor" or current_user.usertype=="Admin" :
        query=Patients.query.all()
        return render_template('booking.html',query=query)
    else:
        query=Patients.query.filter_by(email=em)
        print(query)
        return render_template('booking.html',query=query)


@app.route("/edit_wards/<string:ward_id>",methods=['POST','GET'])
@login_required
def edit_wards(ward_id):    
    if request.method=="POST":
        ward_name=request.form.get('ward_name')
        building=request.form.get('building')
        floor=request.form.get('floor')
        phone_number=request.form.get('phone_number')
        int_of_free_beds=request.form.get('int_of_free_beds')
        maximum_capacity=request.form.get('maximum_capacity')
        hospital_hospital_id=request.form.get('hospital_hospital_id')
        print(f"ward_name:{ward_name}")
        post=Ward.query.filter_by(ward_id=ward_id).first()
        post.ward_name=ward_name
        post.building=building
        post.floor=floor
        post.phone_number=phone_number
        post.int_of_free_beds=int_of_free_beds
        post.maximum_capacity=maximum_capacity
        post.hospital_hospital_id=hospital_hospital_id
        db.session.commit()

        flash("Slot is Updates","success")
        return redirect('/wards')
        
    posts=Ward.query.filter_by(ward_id=ward_id).first()
    return render_template('edit_ward.html',posts=posts)
    

@app.route("/edit_doctor/<string:did>",methods=['POST','GET'])
@login_required
def edit_doctor(did):    
    if request.method=="POST":
        email=request.form.get('email')
        doctorname=request.form.get('doctorname')
        dept=request.form.get('dept')
        ward_ward_id=request.form.get('ward_ward_id')
        post=Doctors.query.filter_by(did=did).first()
        post.email=email
        post.doctorname=doctorname
        post.dept=dept
        post.ward_ward_id=ward_ward_id
        db.session.commit()

        flash("Slot is Updates","success")
        return redirect('/showdoctors')
        
    posts=Doctors.query.filter_by(did=did).first()
    return render_template('edit_doctor.html',posts=posts)


@app.route("/edit/<string:pid>",methods=['POST','GET'])
@login_required
def edit(pid):    
    if request.method=="POST":
        email=request.form.get('email')
        name=request.form.get('name')
        gender=request.form.get('gender')
        slot=request.form.get('slot')
        disease=request.form.get('disease')
        time=request.form.get('time')
        date=request.form.get('date')
        dept=request.form.get('dept')
        number=request.form.get('number')
        ward_ward_id=request.form.get('ward_ward_id')
        post=Patients.query.filter_by(pid=pid).first()
        post.email=email
        post.name=name
        post.gender=gender
        post.slot=slot
        post.disease=disease
        post.time=time
        post.date=date
        post.dept=dept
        post.number=number
        post.ward_ward_id=ward_ward_id
        db.session.commit()

        flash("Slot is Updates","success")
        return redirect('/bookings')
        
    posts=Patients.query.filter_by(pid=pid).first()
    return render_template('edit.html',posts=posts)


@app.route("/delete_doctor/<string:did>",methods=['POST','GET'])
@login_required
def delete_doctor(did):
    query=Doctors.query.filter_by(did=did).first()
    db.session.delete(query)
    db.session.commit()
    flash("Slot Deleted Successful","danger")
    return redirect('/showdoctors')


@app.route("/delete/<string:pid>",methods=['POST','GET'])
@login_required
def delete(pid):
    query=Patients.query.filter_by(pid=pid).first()
    db.session.delete(query)
    db.session.commit()
    flash("Slot Deleted Successful","danger")
    return redirect('/bookings')


@app.route('/signup',methods=['POST','GET'])
def signup():
    if request.method == "POST":
        username=request.form.get('username')
        usertype=request.form.get('usertype')
        email=request.form.get('email')
        password=request.form.get('password')
        user=User.query.filter_by(email=email).first()
        encpassword=generate_password_hash(password)
        if user:
            flash("Email Already Exist","warning")
            return render_template('/signup.html')

        myquery=User(username=username,usertype=usertype,email=email,password=encpassword)
        db.session.add(myquery)
        db.session.commit()
        flash("Signup Succes Please Login","success")
        return render_template('login.html')
    return render_template('signup.html')


@app.route('/login',methods=['POST','GET'])
def login():
    if request.method == "POST":
        email=request.form.get('email')
        password=request.form.get('password')
        user=User.query.filter_by(email=email).first()
        if user and check_password_hash(user.password,password):
            login_user(user)
            flash("Login Success","primary")
            return redirect(url_for('index'))
        else:
            flash("invalid credentials","danger")
            return render_template('login.html')   
    return render_template('login.html')

@app.route('/logout')
@login_required
def logout():
    logout_user()
    flash("Logout SuccessFul","warning")
    return redirect(url_for('login'))


@app.route('/details')
@login_required
def details():
    posts=Trigr.query.all()
    return render_template('trigers.html',posts=posts)


@app.route('/search',methods=['POST','GET'])
@login_required
def search():
    if request.method=="POST":
        query=request.form.get('search')
        dept=Doctors.query.filter_by(dept=query).first()
        name=Doctors.query.filter_by(doctorname=query).first()
        if name:
            flash("Doctor is Available","info")
        else:
            flash("Doctor is Not Available","danger")
    return render_template('index.html')


app.run(debug=True)    

