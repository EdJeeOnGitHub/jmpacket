import subprocess
import os


def main():
    # Change to the coverletters directory and run compile.py
    coverletters_dir = os.path.join(os.path.dirname(__file__), 'coverletters')
    compile_script = os.path.join(coverletters_dir, 'compile.py')
    
    # Run the compile.py script in the coverletters directory
    result = subprocess.run(['python', compile_script], cwd=coverletters_dir, capture_output=True, text=True)
    
    if result.returncode == 0:
        print("Cover letters compiled successfully!")
        if result.stdout:
            print(result.stdout)
    else:
        print("Error compiling cover letters:")
        if result.stderr:
            print(result.stderr)
        if result.stdout:
            print(result.stdout)


if __name__ == "__main__":
    main()
