import os
import urllib.request
import tarfile

DL_URL_ROOT = 'https://raw.githubusercontent.com/ageron/handson-ml2/master/'
SV_PATH = os.path.join('datasets','housing')
DL_URL = DL_URL_ROOT + 'datasets/housing/housing.tgz'

def fetch_housing_data (housing_url=DL_URL, housing_path=SV_PATH):
  os.makedirs(housing_path, exist_ok=True)
  tgz_path = os.path.join(housing_path, 'housing.tgz')
  urllib.request.urlretrieve(housing_url, tgz_path)
  housing_tgz = tarfile.open(tgz_path)
  housing_tgz.extractall(path=housing_path)
  housing_tgz.close()
