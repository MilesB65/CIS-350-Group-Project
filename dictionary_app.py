import requests


def get_definition(word):

    if not isinstance(word, str):
        return "Please enter a word."

    if not word.isalpha():
        return "Please use letters only."

    url = f"https://api.dictionaryapi.dev/api/v2/entries/en/{word}"

    try:
        response = requests.get(url)

        if response.status_code == 200:
            data = response.json()
            return data[0]["meanings"][0]["definitions"][0]["definition"]

        return "Definition not found."

    except Exception as error:
        return f"Error: {error}"


# app keeps running until you exit
while True:
    word = input("\nEnter a word: ")
    print(get_definition(word))

    again = input("\nDo you want to enter another word? (yes/no): ").lower()

    if again != "yes":
        print("Thank you for using our dictonary!")
        break