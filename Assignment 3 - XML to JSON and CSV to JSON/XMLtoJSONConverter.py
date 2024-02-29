import xmltodict
import json
import os

def xml_to_json(xml_data):
    tweet_list = xmltodict.parse(xml_data)["Tweets"]["Tweet"]
    tweets = []

    for tweet_data in tweet_list:
        tweet = {
            "ID": int(tweet_data["ID"]),
            "QuotedID": int(tweet_data["QuotedID"]),
            "RetweetedText": tweet_data.get("RetweetedText", ""),
            "RetweetedHandle": tweet_data.get("RetweetedHandle", ""),
            "RetweetedName": tweet_data.get("RetweetedName", ""),
            "Retweets": int(tweet_data["Retweets"]),
            "Source": tweet_data["Source"],
            "Text": tweet_data["Text"],
            "UserHandle": tweet_data["UserHandle"],
            "UserName": tweet_data["UserName"]
        }
        tweets.append(tweet)

    return {"Tweets": tweets}

def main():
    xml_file = "twitter.xml"

    if not os.path.isfile(xml_file):
        print("Error: File '{}' not found.".format(xml_file))
        return

    with open(xml_file, 'r') as xmlfile:
        xml_data = xmlfile.read()
        json_data = xml_to_json(xml_data)

        # Save JSON to a file named "XML2JSON.json"
        with open("XML2JSON.json", 'w') as jsonfile:
            jsonfile.write(json.dumps(json_data, indent=2))

        print("Conversion successful. JSON data saved to XML2JSON.json.")

if __name__ == "__main__":
    main()
