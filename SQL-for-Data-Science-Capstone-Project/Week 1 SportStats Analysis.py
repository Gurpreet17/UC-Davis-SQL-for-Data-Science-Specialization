#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import pandasql as ps
import matplotlib.pyplot as plt


# In[2]:


noc_regions = pd.read_csv('Data/noc_regions.csv')


# In[3]:


athlete_events = pd.read_csv('Data/athlete_events.csv')


# In[4]:


athlete_events.head()


# In[5]:


noc_regions.head()


# In[6]:


query1 = "SELECT Sport, COUNT(DISTINCT Name) AS 'Athlete Count' FROM athlete_events GROUP BY Sport ORDER BY COUNT(DISTINCT Name) DESC LIMIT 5"


# In[7]:


athlete_count = ps.sqldf(query1, locals())
athlete_count


# In[8]:


plt.bar(athlete_count['Sport'],athlete_count['Athlete Count'])
plt.xlabel('Sport')
plt.ylabel('Athlete Count')
plt.title('Histogram of Athlete in each Sport Category')


# In[9]:


query2 = "SELECT Sex, COUNT(Sex) AS Count FROM athlete_events GROUP BY Sex"


# In[10]:


sex_count = ps.sqldf(query2,locals())
sex_count


# In[11]:



plt.bar(sex_count['Sex'], sex_count['Count'])
plt.xlabel('Sex')
plt.ylabel('Count')
plt.title('Histogram of Sex Distribution')

