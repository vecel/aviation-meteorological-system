# Setup

## NiFi
Navigate to nifi directory and create credentials to log in to the NiFi service.

```bash
cd nifi
touch .env
```

Paste the following to the .env file and replace [USERNAME] and [PASSWORD] with your own. Make sure password is at least 12 characters long. Otherwise NiFi will generate random credentials.

```bash
SINGLE_USER_CREDENTIALS_USERNAME=[USERNAME]
SINGLE_USER_CREDENTIALS_PASSWORD=[PASSWORD]
```

Go back to the root directory.
```bash
cd ..
```

## OpenSky secrets
Create an account at [OpenSky](https://opensky-network.org/) and request credentials for API client. You will be given a JSON file with your ID and a secret.

Create a secrets directory in the project's root. 
```bash
mkdir secrets
cd secrets
```

Add the following files to the secrets directory. Paste your ID and secret into those files respectively.
```bash
touch opensky_client_id.txt opensky_client_secret.txt
```

Navigate back to the root directory.
```bash
cd ..
```