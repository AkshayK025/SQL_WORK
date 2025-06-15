 ### Problem 1

## 🔢 Match Combination Calculation

To calculate the **number of unique match combinations** (i.e., matches where Team A vs Team B is the same as Team B vs Team A, and no team plays against itself), we use a basic formula from combinatorics.

### 📐 Formula

Number of matches = n × (n - 1) / 2

Where:
- `n` is the total number of teams

### 📘 Example

If there are 4 teams:

Number of matches = 4 × (4 - 1) / 2  
                  = 4 × 3 / 2  
                  = 12 / 2  
                  = 6 matches

### 🧠 Why This Works

- Each team can play against (n - 1) other teams.
- That results in n × (n - 1) total match directions (e.g., A vs B and B vs A both counted).
- Since A vs B is the same as B vs A, we divide the total by 2 to avoid duplicates.
