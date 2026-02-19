
## 📌 Incident & Event Automation Script (Bash)

This project is a **Bash scripting automation project** that simulates a real-world Service Desk / SOC workflow.

The script checks:

* If an incident ticket is **opened or closed**
* If closed → retrieve the related **event ID**
* Check the event status
* If the event is still opened → automatically mark it as closed inside `check-file`

---

## 📂 Project Structure

```
.
├── script.sh
├── tickets-status
├── event-status
├── event-tickets
├── check-file
```

### 🔹 tickets-status

Contains incident number and its status.

Example:

```
INC0000401357  closed
```

### 🔹 event-tickets

Maps Incident ID to Event ID.

Example:

```
INC0000401357:6192fd9a-9b03-71ec-01b9-0a4e23470000
```

### 🔹 event-status

Contains Event ID and its status.

Example:

```
6192fd9a-9b03-71ec-01b9-0a4e23470000  closed
```

---

## ⚙️ How It Works

1. User enters an incident number.
2. Script checks:

   * If ticket is **opened** → Exit.
   * If ticket is **closed**:

     * Get corresponding event ID.
     * Check event status.
     * If event is **opened**, convert it to **closed** and log it into `check-file`.

---

## 🧠 Concepts Used

* `read`
* `grep`
* `awk`
* `sed`
* conditional statements
* variables
* file parsing
* automation logic

---

## ▶️ How to Run

```bash
chmod +x script.sh
./script.sh
```

Then enter an incident number like:

```
INC0000401358
```

---

## 🎯 Project Goal

To simulate real-world SOC / ITSM workflow automation using Bash scripting.

---


