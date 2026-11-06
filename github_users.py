import requests

usernames = ["torvalds", "gvanrossum", "octocat"]

for name in usernames:
    response = requests.get(f"https://api.github.com/users/{name}")

    if response.status_code == 200:
        data = response.json()
        print(f"Login: {data['login']} | Public repos: {data['public_repos']}")
    else:
        print(f"Could not fetch {name}. Status code: {response.status_code}")