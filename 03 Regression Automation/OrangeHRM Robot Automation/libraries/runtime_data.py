"""Persistence helpers for employee data shared between test executions."""

import json
from pathlib import Path


_RUNTIME_DATA_FILE = (
    Path(__file__).resolve().parent.parent / "variables" / "runtime_data.json"
)


def _load_data():
    if not _RUNTIME_DATA_FILE.exists():
        return {}
    with _RUNTIME_DATA_FILE.open("r", encoding="utf-8") as data_file:
        return json.load(data_file)


def _save_data(data):
    _RUNTIME_DATA_FILE.parent.mkdir(parents=True, exist_ok=True)
    with _RUNTIME_DATA_FILE.open("w", encoding="utf-8") as data_file:
        json.dump(data, data_file, indent=4)
        data_file.write("\n")


def save_employee_runtime_data(first_name, last_name):
    data = _load_data()
    data["employee"] = {
        "first_name": first_name,
        "last_name": last_name,
    }
    _save_data(data)


