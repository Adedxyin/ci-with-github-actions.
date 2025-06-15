import pytest
from app import app

@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client

def test_home_route(client):
    """Test if the home route returns a successful response"""
    response = client.get('/')
    assert response.status_code == 200
    assert b"Hello, Dockerized Flask App!" in response.data