#!/usr/bin/env python
# coding: utf-8

# In[17]:


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
get_ipython().run_line_magic('matplotlib', 'inline')


# In[25]:


df = pd.read_csv('student-mat.csv')
df.head()


# In[20]:


sns.set(style = 'white')
g = sns.lmplot(y='Walc', x='age', hue='sex', data = df)
g.set_ylabels('Weekly Alcohol Consumption')
g.set_xlabels('Age')

plt.show()


# In[27]:


sns.set(style = 'dark')
g = sns.catplot(x = 'age', y = 'Walc', hue = 'sex', data = df, kind= 'bar')
plt.show()


# In[32]:


sns.set(style = 'darkgrid')
g = sns.boxplot(x = 'age', y = 'Walc', hue = 'sex', data = df)
sns.despine(offset=10, trim=True)
plt.show()


# In[33]:


sns.set(style="whitegrid")

g = sns.pointplot(x="age", y="Walc", hue="sex", data=df,
                kind="strip", palette="pastel",ci=95,dodge=True,join=False)

plt.show()


# In[ ]:




