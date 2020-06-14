import sys
import math
import logging
import string
import pandas

def mageckcount_gini(x):
  '''
  Return the Gini index of an array
  Calculation is based on http://en.wikipedia.org/wiki/Gini_coefficient
  https://bitbucket.org/liulab/mageck/src/64a1fde2154bb6e52dcbf23384e1a5a584d8d5ff/mageck/mageckCountIO.py?at=master#mageckCountIO.py-12,14:15,419,643
  '''
  xs=sorted(x)
  n=len(xs)
  gssum=sum([ (i+1.0)*xs[i] for i in range(n)])
  ysum=sum(xs)
  if ysum==0.0:
    ysum=1.0
  gs=1.0-2.0*(n-gssum/ysum)/(n-1)
  print("n:" + str(n))
  print("gssum:" + str(gssum))
  print("ysum:" + str(ysum))
  return gs

count = sys.argv[1]
sample_name = sys.argv[2]
df = pandas.read_csv(count, sep="\t", header=None)
# https://stackoverflow.com/questions/36728531/how-do-i-use-pandas-dataframes-to-select-the-first-column-as-array
normal_counts = df.iloc[:, 0].values
print(sample_name + "\t" + str(mageckcount_gini(normal_counts)))
