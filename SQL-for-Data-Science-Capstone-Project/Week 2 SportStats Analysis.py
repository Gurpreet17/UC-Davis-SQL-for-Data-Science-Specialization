#!/usr/bin/env python
# coding: utf-8

# In[25]:


import pandas as pd
import pandasql as ps
import matplotlib.pyplot as plt


# In[26]:


noc_regions = pd.read_csv('Data/noc_regions.csv')


# In[27]:


athlete_events = pd.read_csv('Data/athlete_events.csv')


# In[28]:


athlete_events.head()


# In[29]:


noc_regions.head()


# In[30]:


query1 = "SELECT Sport, SUM(CASE WHEN Medal != 'NaN' THEN 1 ELSE 0 END) AS 'Medal Count' FROM athlete_events GROUP BY Sport ORDER BY COUNT(Medal) DESC LIMIT 6"


# In[31]:


sport_medal_count = ps.sqldf(query1, locals())
sport_medal_count


# In[32]:


plt.bar(sport_medal_count['Sport'],sport_medal_count['Medal Count'])
plt.xlabel('Sport')
plt.ylabel('Medal Count')
plt.title('Histogram of Medal Distribution')


# In[33]:


query2 = "SELECT Name, Sport, MAX(Medal) AS 'Medal Count' FROM (SELECT DISTINCT Name, Sport, COUNT('Medal') AS Medal FROM athlete_events WHERE Medal != 'NaN' GROUP BY Name) WHERE Sport = 'Football' OR Sport = 'Swimming' OR Sport = 'Basketball' GROUP BY Sport ORDER BY MAX(Medal) DESC "


# In[34]:


player_medal_count = ps.sqldf(query2, locals())
player_medal_count


# In[45]:


query3 = "SELECT Region, Team, COUNT(DISTINCT Name) AS Athletes FROM athlete_events INNER JOIN noc_regions ON athlete_events.NOC = noc_regions.NOC GROUP BY Region ORDER BY COUNT(DISTINCT Name) DESC lIMIT 4"


# In[46]:


country_athlete_production = ps.sqldf(query3,locals())
country_athlete_production


# In[47]:


plt.bar(country_athlete_production['region'],country_athlete_production['Athletes'])
plt.xlabel('region')
plt.ylabel('Athletes')
plt.title('Histogram of Athelete Production')


# In[ ]:




