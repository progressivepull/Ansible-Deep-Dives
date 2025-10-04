# Ansible Lab Quickstart Guide

## 1. Downloading the Repository

You may either clone the repository using Git or download it as a ZIP file from the provided URL.

- **To clone with Git:**
  ```sh
  git clone <repository-url>
  ```
- **To download as ZIP:**
  1. Go to the repository page.
  2. Click "Code" > "Download ZIP".
  3. Extract the ZIP file to your desired location.

## 2. Validation Checklist

After cloning or extracting the repository, **verify all paths** match those specified for your operating system in the repository documentation. This validation step is essential to ensure a smooth setup process.

## 3. Running the Lab

1. **Navigate to the lab directory:**
   ```sh
   cd dive-into-ansible-lab
   ```

2. **Start the lab using Docker Compose:**
   ```sh
   docker compose up
   ```
   - Run this command from your terminal in the lab directory.

3. **Access the Lab Portal:**
   - Open your browser and visit: [http://localhost:1000](http://localhost:1000)
   - You should see the portal interface. 

4. **Access the Terminal:**
   - In the portal, navigate to the "Support Terminal" tab.
   - Click "Ubuntu C".
   - Log in as `ansible` with the password `password`.

## 4. Updating and Refreshing the Lab

- **To update lab images when new Ansible versions are released:**
  ```sh
  docker compose pull
  ```

- **To refresh the lab environment:**
  ```sh
  docker compose rm
  ```
  - On the next `docker compose up`, the lab environment will be recreated.
  - **Note:** Home directories use Docker volumes, so your data should persist across restarts.

## 5. Using the Lab in Google Cloud Shell (Optional, Free)

- Navigate to: [https://diveinto.com/P/playground](https://diveinto.com/P/playground)
- Click the "Open in Cloud Shell" button.
- You may choose to "Trust" the repo, but it will work regardless.
- By default, Cloud Shell runs in ephemeral mode (data is deleted when the session ends). To persist your changes, disable ephemeral mode in settings.
- Follow the interactive tutorial on the right-hand side to start your lab environment.
- When the lab starts, click the "Preview on Port 8080" icon at the top to access the environment.

---

**You are now ready to use the Ansible lab environment for your course activities!**