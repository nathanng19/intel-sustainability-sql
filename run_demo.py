from pathlib import Path
import sqlite3
project = Path(__file__).resolve().parent
if sqlite3.sqlite_version_info < (3,39,0):
    raise RuntimeError("SQLite 3.39+ is required for FULL OUTER JOIN; upgrade Python.")
with sqlite3.connect(":memory:") as db:
    db.executescript((project/"sql"/"00_demo_schema.sql").read_text())
    for query in sorted((project/"sql").glob("*.sql")):
        if query.name.startswith("00_"):
            continue
        cursor = db.execute(query.read_text())
        print("\n"+query.name)
        print(" | ".join(col[0] for col in cursor.description))
        for row in cursor.fetchall():
            print(" | ".join(str(x) for x in row))
