from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/deploy', methods=['POST'])
def deploy():
    data = request.json
    return jsonify({"status": "success", "message": "Deployed successfully!"}), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
