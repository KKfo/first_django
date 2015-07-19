#!/bin/bash

echo "Generating secret key"
python -c 'import random; import string; print("".join([random.SystemRandom().choice(string.digits + string.ascii_letters + string.punctuation) for i in range(100)]))' > main/settings/key_patch.txt
echo "Creating virtualenv tb_dev"
mkvirtualenv tb_dev
echo "Installing requirements for  tb_dev"
pip install -r requirements/development.txt
echo "Seting DJANGO_SETTINGS env variable hook for tb_dev"
cd $VIRTUAL_ENV/bin
echo 'export DJANGO_SETTINGS_MODULE="main.settings.development' >> postactivate
echo "unset DJANGO_SETTINGS_MODULE" >> predeactivate
deactivate
echo "tb_dev created"
echo "Creating virtualenv tb_test"
mkvirtualenv tb_test
echo "Installing requirements for  tb_test"
pip install -r requirements/testing.txt
echo "Seting DJANGO_SETTINGS env variable hook for tb_test"
cd $VIRTUAL_ENV/bin
echo 'export DJANGO_SETTINGS_MODULE="main.settings.testing' >> postactivate
echo "unset DJANGO_SETTINGS_MODULE" >> predeactivate
deactivate
echo "tb_test created"
