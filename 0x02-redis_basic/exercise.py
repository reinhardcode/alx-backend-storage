#!/usr/bin/env python3
"""
contains a cache class
"""
import redis
import uuid
from typing import Union


class Cache:
    """class that creates a cache mech"""
    def __init__(self):
        """instatiate"""

        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """store value in cache"""
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key

