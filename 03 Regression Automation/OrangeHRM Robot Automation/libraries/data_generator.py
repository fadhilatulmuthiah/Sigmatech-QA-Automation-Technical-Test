"""Generic test-data generators for future Robot Framework keywords."""

from datetime import datetime
import random
import string


def _timestamp_suffix():
    return datetime.now().strftime("%Y%m%d%H%M%S")


def generate_unique_employee_first_name():
    return f"TestFirst{_timestamp_suffix()}"


def generate_unique_employee_last_name():
    return f"TestLast{_timestamp_suffix()}"


def generate_unique_username():
    return f"testuser{_timestamp_suffix()}"


def generate_random_employee_id():
    prefix = "".join(random.choices(string.digits, k=6))
    return prefix
