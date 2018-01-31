shopping_list = list()

print("What should we pickup at the store? ")
print("Enter DONE to stop adding items. ")

while True:
      # use raw_input instead of input
      new_item = input("> ")

      if new_item == 'DONE':
            break

      shopping_list.append(new_item)
      # use {0} instead of {} when formatting
      print("Added! List has {0} items.".format(len(shopping_list)))
      continue

print("Here's your list:")

for item in shopping_list:
      print(item)