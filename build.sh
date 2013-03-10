#!/bin/sh

mkdir build

pip install --download='./build' --no-install -r requirements.txt

unzip -q build/django-autoload-0.01.zip -d build
unzip -q build/django-dbindexer-0.3.zip -d build
unzip -q build/django-nonrel-1.3.7.zip -d build
unzip -q build/djangoappengine-1.0.zip -d build
unzip -q build/djangotoolbox-0.9.2.zip -d build
unzip -q build/django-social-auth-0.7.22.zip -d build

cp -r build/django-autoload/autoload ./app/autoload
cp -r build/django-dbindexer/dbindexer ./app/dbindexer
cp -r build/django-nonrel/django ./app/django
cp -r build/djangoappengine/djangoappengine ./app/djangoappengine
cp -r build/djangotoolbox/djangotoolbox ./app/djangotoolbox
cp -r build/django-social-auth/social_auth ./app/social_auth

cp -r pre-commit_sample .git/hooks/pre-commit
cp -r post-commit_sample .git/hooks/post-commit

rm pre-commit_sample
rm post-commit_sample

rm -rf build/
rm -rf src/