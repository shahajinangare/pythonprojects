from flask import Flask
from flask_admin import Admin, BaseView, expose
from flask_admin.contrib.sqla import ModelView
from flask_sqlalchemy import SQLAlchemy
db = SQLAlchemy()

class MyView(BaseView):
    @expose('/')
    def index(self):
        return self.render('my/index.html')

app = Flask(__name__)
admin = Admin(app, name='MoneyTool', template_mode='bootstrap3')

admin.add_view(MyView(name='Hello'))
# Add administrative views here
#admin.add_view(ModelView(User, db.session))
#admin.add_view(ModelView(User,db.session,category="model", endpoint="model_view_user"))
#admin.add_view(ModelView(Role,db.session,category="model", endpoint="model_view_role"))
#admin.add_view(ModelView(Post, db.session))

app.run()

