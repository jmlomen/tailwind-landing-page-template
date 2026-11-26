import pytest
from fastapi.testclient import TestClient

from sites import app


@pytest.fixture
def client():
    with TestClient(app) as test_client:
        yield test_client


def test_health_returns_ok(client):
    response = client.get("/health")

    assert response.status_code == 200
    assert response.json() == {"status": "ok"}


def test_crops_returns_list(client):
    response = client.get("/api/crops")

    assert response.status_code == 200
    assert response.json() == [
        {"id": 1, "name": "Corn"},
        {"id": 2, "name": "Soybeans"},
    ]
