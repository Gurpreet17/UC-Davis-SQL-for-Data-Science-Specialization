#!/usr/bin/env python
# coding: utf-8

# In[52]:


import pandas as pd
import pandasql as ps
import matplotlib.pyplot as plt


# In[53]:


noc_regions = pd.read_csv('Data/noc_regions.csv')


# In[54]:


athlete_events = pd.read_csv('Data/athlete_events.csv')


# In[55]:


athlete_events.head()


# In[56]:


noc_regions.head()


# In[85]:


query1 = "SELECT Sport, SUM(CASE WHEN Medal != 'NaN' THEN 1 ELSE 0 END) AS 'Total Medal', SUM(CASE WHEN Medal = 'Gold' THEN 1 ELSE 0 END)  AS 'Gold Medal', SUM(CASE WHEN Medal == 'Silver' THEN 1 ELSE 0 END) AS 'Silver Medal', SUM(CASE WHEN Medal == 'Bronze' THEN 1 ELSE 0 END) AS 'Bronze Medal' FROM athlete_events GROUP BY Sport ORDER BY COUNT(Medal) DESC LIMIT 6"


# In[86]:


sport_medal_count = ps.sqldf(query1, locals())
sport_medal_count


# In[57]:


query2 = "SELECT Name, Sport, MAX(Medal) AS 'Total Medal', Gold AS 'Gold Medal', Silver AS 'Silver Medal', Bronze AS 'Bronze Medal' FROM (SELECT DISTINCT Name, Sport, SUM(CASE WHEN Medal != 'NaN' THEN 1 ELSE 0 END) AS 'Medal', SUM(CASE WHEN Medal IS 'Gold' THEN 1 ELSE 0 END) AS Gold, SUM(CASE WHEN Medal = 'Silver' THEN 1 ELSE 0 END) AS Silver, SUM(CASE WHEN Medal = 'Bronze' THEN 1 ELSE 0 END) AS Bronze FROM athlete_events GROUP BY Name) GROUP BY Sport ORDER BY MAX(Medal) DESC"


# In[58]:


player_medal_count = ps.sqldf(query2, locals())
player_medal_count


# In[77]:


query3 = "SELECT Region, Team, COUNT(DISTINCT Name) AS Athletes, AVG(Age) AS 'Average Age', AVG(Height) AS 'Average Height', AVG(Weight) AS 'Average Weight', (AVG(Weight)/(AVG(Height)*AVG(Height)))*10000 AS BMI FROM athlete_events INNER JOIN noc_regions ON athlete_events.NOC = noc_regions.NOC GROUP BY Region ORDER BY COUNT(DISTINCT Name) DESC lIMIT 11"


# In[78]:


country_athlete_production = ps.sqldf(query3,locals())
country_athlete_production


# In[ ]:




