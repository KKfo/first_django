# first_django
Project created while following Marina Mele's tutorial.

The tutorial can be found at http://www.marinamele.com/taskbuster-django-tutorial
The boilerplate she uses can be found at https://github.com/mineta/taskbuster-boilerplate

$> python -c 'import random; import string; print("".join([random.SystemRandom().choice(string.digits + string.ascii_letters + string.punctuation) for i in range(100)]))' > main/settings/key_patch.txt
$> mkvirtualenv tb_dev
$> pip install -r requirements/development.txt
$> cd $VIRTUAL_ENV/bin
$> echo 'export DJANGO_SETTINGS_MODULE="main.settings.development' >> postactivate
$> echo "unset DJANGO_SETTINGS_MODULE" >> predeactivate
$> deactivate
$> mkvirtualenv tb_test
$> pip install -r requirements/testing.txt
$> cd $VIRTUAL_ENV/bin
$> echo 'export DJANGO_SETTINGS_MODULE="main.settings.testing' >> postactivate
$> echo "unset DJANGO_SETTINGS_MODULE" >> predeactivate
$> deactivate
