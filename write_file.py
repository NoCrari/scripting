def to_do(input):
    # Open the file in write mode
    with open("output.txt", "w", encoding="utf-8") as file:
        for task_date, task_description in input:
            # Format the date as "Weekday DD Month YYYY"
            formatted_date = task_date.strftime("%A %d %B %Y")
            # Write the formatted string to the file
            file.write(f"{formatted_date}: {task_description}\n")
