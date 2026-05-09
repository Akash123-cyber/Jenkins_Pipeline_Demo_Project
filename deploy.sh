# cd /home/ubuntu/Jenkins_Pipeline_Demo_Project

# git pull origin main

# pip install -r requirements.txt

# python3 manage.py migrate

# python3 manage.py collectstatic --noinput

# sudo systemctl restart gunicorn

# echo "Deployment Successful"

# ------------

pip install -r requirements.txt

python manage.py migrate

python manage.py collectstatic --noinput

pkill gunicorn || true

gunicorn CSE3D.wsgi:application --bind 0.0.0.0:8000 --daemon