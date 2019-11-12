#!/usr/bin/env python
# coding: utf-8

# In[10]:


from scipy.stats import ttest_ind_from_stats


# In[12]:


𝑦1=5  
𝑦2=8
𝑠1=1
𝑠2=3   
𝑁1=200 
𝑁2=500

ttest_ind_from_stats(y1, s1, N1, y2, s2, N2)


# In[15]:


𝑦1=1090
𝑦2=999
𝑠1=400
𝑠2=30
𝑁1=900
𝑁2=100
ttest_ind_from_stats(y1, s1, N1, y2, s2, N2)


# In[18]:


𝑦1=45 
𝑦2=40
𝑠1=45 
𝑠2=40 
𝑁1=2000 
𝑁2=2000
ttest_ind_from_stats(y1, s1, N1, y2, s2, N2)


# In[ ]:




