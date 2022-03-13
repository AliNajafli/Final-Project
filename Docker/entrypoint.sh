python ./Backend/manage.py migrate

echo "Create superuser"
python ./Backend/manage.py createadminuser

# Start server
echo "Starting server"
python ./Backend/manage.py runserver 0.0.0.0:8000
#gunicorn --reload config.wsgi -c gunicorn.py -b 0.0.0.0:8888