# GitHub Repository Creation Script

Ez a shell script automatikusan létrehoz egy helyi és távoli GitHub repót az aktuális mappában, majd feltölti annak tartalmát a távoli repóba.

## Funkciók
- **Automatikus repó név**: Alapértelmezés szerint a jelenlegi mappa nevét használja repó névként.
- **Publikus vagy privát**: Lehetőség van kiválasztani, hogy a repó privát vagy publikus legyen (alapértelmezés: privát).
- **Git inicializálás és push**: A script automatikusan inicializálja a helyi repót, hozzáadja a fájlokat, létrehozza a fő ágat (`main`), majd feltölti a tartalmat a GitHub-ra.

## Használat
### 1. Alias létrehozása
Adjuk hozzá a következő alias-t a `.bashrc` vagy `.zshrc` fájlhoz:
```bash
alias create-repo='/path/to/script/create_git_repo.sh'
```
Ezután futtassuk:
```bash
source ~/.bashrc  # vagy ~/.zshrc
```

### 2. Script futtatása
Lépj a mappába, amelyből repót szeretnél létrehozni, majd futtasd az alábbi parancsot:
```bash
create-repo
```

## Interakció
1. A script kéri a repó nevét (alapértelmezésként a mappa nevét használja).
2. Válaszd ki, hogy a repó **privát (1)** vagy **publikus (2)** legyen.

## Függőségek
- **Git**: Telepítsd a `git` csomagot.
- **GitHub CLI (gh)**: Telepítsd a GitHub CLI-t a következő parancsok futtatásával:
  ```bash
  sudo dnf install gh  # Fedora Linux
  sudo apt install gh  # Debian/Ubuntu Linux
  ```
  Jelentkezz be a GitHub CLI-be:
  ```bash
  gh auth login
  ```

## Példa
```bash
# Példa futtatásra
create-repo
# Add meg a repó nevét (alapértelmezett: current_folder): my-new-repo
# Publikus vagy privát? (1=Privát, 2=Publikus, alapértelmezett: Privát): 2
```
Ez létrehoz egy `my-new-repo` nevű publikus GitHub repót, és feltölti a jelenlegi mappa tartalmát.
