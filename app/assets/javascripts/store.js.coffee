# http://emberjs.com/guides/models/using-the-store/

DS.ActiveModelAdapter.reopen
	namespace: 'api'

# Skite.Store = DS.Store.extend
#   adapter: 'DS.ActiveModelAdapter'
Skite.ApplicationAdapter =  DS.ActiveModelAdapter.extend() 