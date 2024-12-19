import subprocess
import os
import time

# Flask application launcher
def launch_flask():
    # Launch the Flask application
    current_dir = os.path.dirname(os.path.abspath(__file__))
    # Path to flask app
    flask_app_path = os.path.join(current_dir, 'server.py')

    # Launch the Flask application
    process = subprocess.Popen(['python', flask_app_path], cwd=current_dir)
    time.sleep(1)
    return process

# Main function
if __name__ == '__main__':
    launch_flask()