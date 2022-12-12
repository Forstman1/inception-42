

# databasename = input()
# username = input()
# password = input()



keys = []
with open("./keys") as file :
  keys = file.readlines()

conf_file = []
with open("/var/www/html/wp-config.php", "r") as file2 :
  conf_file = file2.readlines()

envirement = []
with open("envirement", "r") as file :
  envirement = file.readlines()

# Replace the target string
conf_file[50] = "\n"
conf_file[51] = conf_file[51].replace(conf_file[51], keys[0])
conf_file[52] = conf_file[52].replace(conf_file[52], keys[1])
conf_file[53] = conf_file[53].replace(conf_file[53], keys[2])
conf_file[54] = conf_file[54].replace(conf_file[54], keys[3])
conf_file[55] = conf_file[55].replace(conf_file[55], keys[4])
conf_file[56] = conf_file[56].replace(conf_file[56], keys[5])
conf_file[57] = conf_file[57].replace(conf_file[57], keys[6])
conf_file[58] = conf_file[58].replace(conf_file[58], keys[7])

conf_file[25] = conf_file[25].replace(conf_file[25], envirement[1])
conf_file[28] = conf_file[28].replace(conf_file[28], envirement[2])
conf_file[22] = conf_file[22].replace(conf_file[22], envirement[0])


# Write the file out again
with open('/var/www/html/wp-config.php', 'w') as file:
  file.writelines(conf_file)