$db_config = loadyaml('/vagrant/examples/files/database.yml')
notice($db_config['development']['database'])

# Result: 'dev_db'
