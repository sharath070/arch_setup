---

## 🔐 Arch Linux Maintenance & Security Tips

### 1. **Keep Your System Updated Regularly (But Carefully)**

* Run:

  ```bash
  sudo pacman -Syu
  ```
* Avoid partial upgrades — they can break dependencies.
* Read [Arch news](https://archlinux.org/news/) before big updates (some updates may require manual intervention).
* Consider testing updates in a VM or container if you’re about to do risky stuff.

---

### 2. **Backup Before Big Changes**

- Use simple tools like:

  ```bash
  rsync -a --progress /home/yourusername/ /path/to/backup/
  ```

- Or commit dotfiles often and push to a remote Git repo.
- Snapshots with tools like `timeshift` or `btrfs` snapshots (if you use btrfs) are great.

---

### 3. **Use a Firewall**

- Install and configure `ufw` (easy firewall):

  ```bash
  sudo pacman -S ufw
  sudo systemctl enable ufw
  sudo systemctl start ufw
  sudo ufw default deny incoming
  sudo ufw default allow outgoing
  sudo ufw allow ssh
  ```

- For more control, use `iptables` or `nftables`.
- Always make sure you don’t lock yourself out (especially with SSH).

---

### 4. **Limit Root Access**

- Avoid running GUI apps or commands as root unless necessary.
- Use `sudo` for privilege escalation.
- Keep your sudoers file minimal and secure (`sudo visudo`).

---

### 5. **Secure SSH**

- Disable root login over SSH by editing `/etc/ssh/sshd_config`:

  ```
  PermitRootLogin no
  ```

- Use SSH keys instead of passwords.
- Consider changing default SSH port.
- Use `fail2ban` to block brute force attempts.

---

### 6. **Audit Installed Packages**

- Regularly review what’s installed:

  ```bash
  pacman -Qe  # explicitly installed packages
  ```

- Remove what you don’t need:

  ```bash
  sudo pacman -Rns package-name
  ```

- Avoid installing unnecessary packages, especially from the AUR, unless you trust them.

---

### 7. **Check for Security Updates**

- Arch’s rolling updates include security patches, but you can check security announcements and advisories here:

  - [Arch Linux Security Advisories](https://security.archlinux.org/)

- Consider tools like `lynis` for auditing:

  ```bash
  sudo pacman -S lynis
  sudo lynis audit system
  ```

---

### 8. **Use Network Namespaces or Containers for Risky Networking Tests**

- If you’re testing weird network configs or sniffing packets, consider isolating your experiments inside:

  - Docker containers
  - `systemd-nspawn`
  - Linux network namespaces

- This limits damage to your main system.

---

### 9. **Log and Monitor**

- Check system logs often:

  ```bash
  journalctl -p 3 -xb  # errors only
  ```

- Use monitoring tools like `htop`, `iotop`, and `nethogs`.

---

### 10. **Practice Good Password Hygiene**

- Use a password manager.
- Use strong, unique passwords.
- Use two-factor authentication where possible (e.g., for GitHub, remote servers).

---

## Bonus: Keep Learning and Be Ready to Troubleshoot

- Bookmark the Arch Wiki — it’s your #1 friend:
  [https://wiki.archlinux.org/](https://wiki.archlinux.org/)
- Join the Arch forums and IRC for help.
- Keep a live USB ready for emergency rescue.

---
