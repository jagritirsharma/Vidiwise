<<<<<<< HEAD
# Vidiwise
Multimodal Deep Learning Framework for Intelligent Video Querying and Graph Recognition.
=======

# Vidiwise Setup Guide

## Backend Setup (Terminal 1)

1. **Navigate to the Backend Directory:**
   ```bash
   cd backend
   ```

2. **Create a Virtual Environment:**
   ```bash
   python -m venv venv
   ```

3. **Activate the Virtual Environment:**
   - **For Windows:**
     ```bash
     venv/Scripts/activate
     ```
   - **For macOS/Linux:**
     ```bash
     source venv/bin/activate
     ```

4. **Install Required Dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

5. **Install Whisper from GitHub:**
   ```bash
   pip install git+https://github.com/openai/whisper.git
   ```

6. **Add Your Gemini Key:**
   - Open `/backend/main.py` and add your Gemini API key on **Line 25**.
   - Also, add your Gemini key in the `.env` file located in the `/vidiwise` directory.

   - You can obtain your Gemini API key from [Google AI Studio](https://aistudio.google.com/).

7. **Run the Backend Application:**
   ```bash
   python app/main.py
   ```

---

## Frontend Setup (Terminal 2)

1. **Navigate to the Frontend Directory:**
   ```bash
   cd frontend
   ```

2. **Install Frontend Dependencies:**
   ```bash
   npm install
   ```

3. **Start the Frontend Development Server:**
   ```bash
   npm start
   ```

---
## Project Trial Links

To verify that the project is working correctly, paste the following YouTube Short URLs into the application:

- [Trial Video 1](https://www.youtube.com/shorts/v0NdBk67zaQ)
- [Trial Video 2](https://www.youtube.com/shorts/Tm3KCr10i4s)

These links will allow you to test the video processing and transcription functionalities of the application.


### Notes:
- Ensure that both terminals are running simultaneously for the backend and frontend to function properly.
- If you face any issues, feel free to check the dependencies and verify the correct setup of your environment variables.
```

!
>>>>>>> fa3ca246c (Initial Commit)
