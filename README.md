# Playlist-Creation-with-Terraform

## Pipeline Usage Examples

A project to automate the creation of multiple Spotify playlists using Terraform. This project uses the Spotify API and Terraform to streamline the playlist creation process, allowing you to manage playlists as code.


1. **`Introduction`**: This project demonstrates how to use Terraform to create and manage Spotify playlists programmatically using HCL. By defining playlists and their tracks in configuration files, users can automate playlist creation and make updates to Spotify in a more structured way.


2. **`Features`**:
   - Automates playlist creation on Spotify using Terraform and the Spotify API.
   - Manages playlists and their contents in a declarative manner.
   - Supports updates to playlists with minimal code changes.

3. **`Requirements`**:
   - Spotify Developer Account: You’ll need to create a Spotify app to get the necessary credentials.
   - Terraform: Make sure Terraform is installed on your machine.
   - Docker:  Make sure Docker is installed on your machine.
   - Spotify API Credentials: Client ID, Client Secret, and a valid Redirect URI for Spotify authentication.

4. **`Run the Pipeline`**: Save the job configuration and run the command to enable the port 27228 od docker container
   ```
   docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy
   ```
   ![Screenshot from 2024-11-03 18-23-43](https://github.com/user-attachments/assets/4d6ab2bd-bd86-4838-a0df-4a301753c381)

   You would get a output like this if you open the Auth URL of your docker command.



### Setup

1. **`Spotify API Setup:`**:
   - Go to Spotify Developer Dashboard.
   - Create a new application to get your Client ID and Client Secret.
   - Add a Redirect URI in the application settings.
   
2. **`Clone the Repo:`**
```
git clone https://github.com/Gokhul26/Playlist-Creation-with-Terraform.git
cd Playlist-Creation-with-Terraform
```

![image](https://github.com/user-attachments/assets/5e1f266c-a1cc-4fdd-ad4d-3f16f69b7743)

3. **`Configure Environment Variables:`**
  - Set up environment variables for your Spotify credentials
```
 SPOTIFY_CLIENT_ID="your-client-id"
 SPOTIFY_CLIENT_SECRET="your-client-secret"
 SPOTIFY_REDIRECT_URI="your-redirect-uri"
```
4. **`Initialize Terraform`**: 
```
terraform init
terraform plan
```

### Usage

1. **`Apply Terraform Configuration:`**
   - Run the following command to create playlists:
```
terraform apply -auto-approve
```
Confirm the creation and view the output to see the newly created playlists on your Spotify account.

![Screenshot from 2024-11-03 18-28-53](https://github.com/user-attachments/assets/0df5667f-f55f-4cbf-8b51-51748f9159bb)


### Configuration
In your Terraform configuration files, you can specify details like:

 - Playlist names and descriptions.
 - Track URIs to include in each playlist.
 - Visibility of playlists (public/private).

### Troubleshooting
1. **`Authentication Errors: `**  Ensure your SPOTIFY_CLIENT_ID, SPOTIFY_CLIENT_SECRET, and SPOTIFY_REDIRECT_URI are correct.
**`Rate Limiting:`** Spotify’s API has rate limits. Wait and retry if you receive a rate limit error.


This structure provides a comprehensive guide for users to understand, set up, and use your project effectively. Adjust any section based on the specific details or functionalities of your project.
