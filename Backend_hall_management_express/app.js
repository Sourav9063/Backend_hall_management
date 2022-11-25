var dotenv = require('dotenv');
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/user');
var cors = require('cors');


var app = express();
dotenv.config();
app.use(cors(
  {
    // origin: 'http://localhost:3000',
    origin: '*',
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH'],

  }
));

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);

const { domainToASCII } = require('url');
const public_routes = require('./routes/public_routes');
app.use("/api/v1/public", public_routes);
const application_routes = require('./routes/application');
app.use("/api/v1/application", application_routes);

const user_routes = require('./routes/user');
app.use("/api/v1/user", user_routes)

const authority_routes = require('./routes/authority_routes');
app.use("/api/v1/authority", authority_routes);


// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.send('error');
});

module.exports = app;
