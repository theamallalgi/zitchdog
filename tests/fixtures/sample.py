# tests/fixtures/sample.py

from dataclasses import dataclass
from typing import Optional


@dataclass
class Config:
    debug: bool = False
    timeout: int = 500


class Fetcher:
    def __init__(self, base_url: str) -> None:
        self.base_url = base_url

    async def fetch(self, path: str, retries: int = 3) -> Optional[dict]:
        for attempt in range(retries):
            try:
                response = await self._request(path)
                return response
            except ConnectionError as err:
                print(f"attempt {attempt} failed: {err}")
        return None

    def _request(self, path: str):
        raise NotImplementedError


if __name__ == "__main__":
    config = Config(debug=True)
    print(f"Running with timeout={config.timeout}")
