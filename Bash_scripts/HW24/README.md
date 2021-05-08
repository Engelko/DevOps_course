# Create bash script to run ansible-playbook
##1.	Split your inventory file into two files and use both to run your playbook
##2.	You should update the previous playbook. Create a user with a password. Use ansible vault. Keep password in vault.yml file. Also add to the user's home folder ./authorized_keys 2 random public keys.
##3.	Add tag to previous task to skip adding the user. Test it.
##4.	Add a new task to update all packages for your OS. Make it optional using tag.
##5.	Play with ./meta. In previous HW you have 2 roles. Make it obligatory to run one of the roles prior to another one.
##6.	Use host template to run ansible playbook( do not put it to script)
##7.	Update your previous playbook. Add 3 additional users to be created(all without sudo). Use loop. Run user creation only if the amount of users does not exceed 3. 
##8.	Which tools can you use to validate your playbook syntax?
##9.	How to change ansible deployment strategy to FREE? 2 ways.
##10.	Using ansible generate a file with current date on your local machine and spray it to remote services
##11.	How to add a new instance to a play during your play?
##12.	Create a task which will be skipped for only one of your hosts. Print message about this.
##13.	Create a task which will be skipped for a group of you hosts. Print message about this
##14.	Add a task to check internet access for remote hosts. If false for at least one host - stop your play
##15.	Install any random package with checking checksum_algorithm. Do not fail at the task but print a message about this.
##16.	How to hide task output?
##17.	How to run the same role twice? 2 options
