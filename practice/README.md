# PostgreSQL Docker Setup for Database Mastery

## Objective

Set up a local PostgreSQL database using Docker for hands-on practice across all database concepts.

---

## Why Use Docker for Databases?

* No need to install PostgreSQL locally
* Easy to start/stop/reset environment
* Matches real-world production environments
* Isolated and reproducible setup

---

## Step 1: Install Docker

Download and install Docker Desktop:
https://www.docker.com/products/docker-desktop

Verify installation:

```bash
docker --version
```

---

## Step 2: Run PostgreSQL Container

Pull PostgreSQL image:

```bash
docker pull postgres
```

Run container:

```bash
docker run --name pg-mastery \
  -e POSTGRES_DB=mastery \
  -e POSTGRES_USER=admin \
  -e POSTGRES_PASSWORD=admin123 \
  -p 5432:5432 \
  -d postgres
```

---

## Step 3: Connect to Database

### Option A: Using CLI

```bash
docker exec -it pg-mastery psql -U admin -d mastery
```

### Option B: Using GUI (Recommended)

Use tools like:

* DBeaver
* pgAdmin

Connection details:

* Host: localhost
* Port: 5432
* Database: mastery
* Username: admin
* Password: admin123

---

## Step 4: Create Test Table

Run inside psql or GUI:

```sql
CREATE TABLE test (
    id SERIAL PRIMARY KEY,
    name TEXT
);

INSERT INTO test (name) VALUES ('Ayodele');

SELECT * FROM test;
```

---

## Step 5: Practice Folder Structure

Create the following structure:

```
practice/
├── schemas/
├── seed/
├── queries/
└── README.md
```

### Purpose:

* **schemas/** → table definitions
* **seed/** → sample data
* **queries/** → practice SQL queries

---

## Step 6: Useful Docker Commands

Start container:

```bash
docker start pg-mastery
```

Stop container:

```bash
docker stop pg-mastery
```

Restart container:

```bash
docker restart pg-mastery
```

View logs:

```bash
docker logs pg-mastery
```

Remove container:

```bash
docker rm -f pg-mastery
```

---

## Optional: Docker Compose (Recommended)

Create a `docker-compose.yml` in root:

```yaml
version: '3.9'

services:
  postgres:
    image: postgres
    container_name: pg-mastery
    restart: always
    environment:
      POSTGRES_DB: mastery
      POSTGRES_USER: admin
      POSTGRES_PASSWORD: admin123
    ports:
      - "5432:5432"
    volumes:
      - pgdata:/var/lib/postgresql/data

volumes:
  pgdata:
```

Run:

```bash
docker-compose up -d
```

Stop:

```bash
docker-compose down
```

---

## 💾 Persistent Data

The volume ensures:

* Data is not lost when container stops
* Real-world database behavior simulation

---

## Acceptance Checklist

* [ ] PostgreSQL container is running
* [ ] Able to connect via CLI or GUI
* [ ] Database `mastery` created
* [ ] Test table created
* [ ] Data inserted and queried successfully
* [ ] `practice/` folder created

---

## Next Steps

* Practice indexing queries
* Simulate transactions
* Analyze query performance using `EXPLAIN`
* Add multiple databases (MySQL, Redis later)

---

## Quick Reset Tip

To reset everything:

```bash
docker-compose down -v
docker-compose up -d
```

---

Happy hacking 🚀
