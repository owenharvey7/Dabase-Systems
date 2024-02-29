import csv
import json
import os

def csv_to_json(csv_file):
    json_data = {"Tweets": []}

    with open(csv_file, 'r', encoding='utf-8') as csvfile:
        csv_reader = csv.reader(csvfile)
        headers = next(csv_reader)
        for row in csv_reader:
            tweet = {
                "Text": row[0],
                "ID": int(row[1]),
                "QuotedID": int(row[2]),
                "RetweetedText": row[3],
                "RetweetedHandle": row[4],
                "RetweetedName": row[5],
                "Retweets": int(row[6]),
                "Source": row[7],
                "UserHandle": row[8],
                "UserName": row[9]
            }
            json_data["Tweets"].append(tweet)

    return json_data

def main():
    csv_file = "twitter.csv"

    if not os.path.isfile(csv_file):
        print("Error: File '{}' not found.".format(csv_file))
        return

    json_data = csv_to_json(csv_file)

    # Save JSON to a file named "CSV2JSON.json"
    with open("CSV2JSON.json", 'w') as jsonfile:
        jsonfile.write(json.dumps(json_data, indent=2))

    print("Conversion successful. JSON data saved to CSV2JSON.json.")

if __name__ == "__main__":
    main()
