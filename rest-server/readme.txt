https://blog.miguelgrinberg.com/post/designing-a-restful-api-with-python-and-flask

username=miguel
password=python

http://127.0.0.1:5000/todo/api/v1.0/tasks     - Get
http://127.0.0.1:5000/todo/api/v1.0/tasks/1   - Get

http://127.0.0.1:5000/todo/api/v1.0/tasks     - Post

{
      "description": "",
      "done": false,
      "id": 3,
      "title": "Read a book"
}

http://127.0.0.1:5000/todo/api/v1.0/tasks/1   - Put

{
  "task": [
    {
      "description": "Need to find a good Python tutorial on the web",
      "done": true,
      "id": 2,
      "title": "Learn Python"
    }
  ]
}

http://127.0.0.1:5000/todo/api/v1.0/tasks/1   - Delete