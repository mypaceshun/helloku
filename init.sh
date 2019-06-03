# -*- coding: utf-8 -*-
# 開発環境のセットアップ

LOCAL_SETTINGS_TEMPLATE=helloku/local_settings.py.template
LOCAL_SETTINGS=helloku/local_settings.py

pipenv sync

if [ ! -e ${LOCAL_SETTINGS_TEMPLATE} ]; then
  echo ${LOCAL_SETTINGS_TEMPLATE} is not found
  exit 1
fi

SECRET_KEY=`pipenv run python -c "from django.core.management.utils import get_random_secret_key;print(get_random_secret_key())"`
sed -e "s/%SECRET_KEY%/SECRET_KEY=\'${SECRET_KEY}\'/g" ${LOCAL_SETTINGS_TEMPLATE} > ${LOCAL_SETTINGS}

