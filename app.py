from flask import Flask

app = Flask(__name__)
@app.route("/")
def hello_cloud():
    return "Hello from Allen ECS Container."

if __name__ == "__main__":
    # 0.0.0.0 so it’s reachable inside the container
    app.run(host="0.0.0.0", port=5000)