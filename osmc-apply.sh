scp -r . osmc:puppet && ssh osmc 'sudo puppet apply --test --modulepath=puppet puppet/osmc-manifest.pp'