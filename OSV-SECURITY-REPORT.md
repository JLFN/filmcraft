# OSV security report: filmcraft

- Repository: https://github.com/storytold/filmcraft
- Local path: /data/filmcraft
- Commit scanned: 1ec744c2
- Scan date: 2026-11-15 18:37 UTC
- Scanner: osv-scanner version: 2.7.1
- Lockfile: Cargo.lock
- Packages scanned: 783
- Advisory entries: 29 across 12 packages
- Findings by class: vulnerability 14, unsound 2, unmaintained 5, other 8

## Verdict

14 advisory entries carry a published CVSS vector or database severity; 5 concern unmaintained crates and 2 concern unsound code. Review the entries below before installing.

## Findings

### crypto-bigint 0.5.5

- RUSTSEC-2026-0387: Multiple timing variability issues in operations intended to be constant-time. Class: unclassified. CVSS: none published. Database severity: not stated. Fixed in: 0.7.6.

### glib 0.18.5

- RUSTSEC-2024-0429: Unsoundness in `Iterator` and `DoubleEndedIterator` impls for `glib::VariantStrIter`. Class: unsound. CVSS: none published. Database severity: not stated. Fixed in: 0.20.0.
- GHSA-wrw7-89jp-8q8g: Unsoundness in `Iterator` and `DoubleEndedIterator` impls for `glib::VariantStrIter`. Class: vulnerability. CVSS: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:L/VA:N/SC:N/SI:N/SA:N. Database severity: MODERATE. Fixed in: 0.20.0.

### paste 1.0.15

- RUSTSEC-2024-0436: paste - no longer maintained. Class: unmaintained. CVSS: none published. Database severity: not stated. Fixed in: no fix listed.

### proc-macro-error 1.0.4

- RUSTSEC-2024-0370: proc-macro-error is unmaintained. Class: unmaintained. CVSS: none published. Database severity: not stated. Fixed in: no fix listed.

### rsa 0.9.10

- RUSTSEC-2023-0071: Marvin Attack: potential key recovery through timing sidechannels. Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N. Database severity: not stated. Fixed in: 0.10.0.

### rustix 1.1.5

- RUSTSEC-2026-0486: xattr functions mark unwritten bytes as initialized when given a zero-length buffer. Class: unsound. CVSS: none published. Database severity: not stated. Fixed in: 1.1.6.

### rustls-webpki 0.102.8

- RUSTSEC-2026-0049: CRLs not considered authoritative by Distribution Point due to faulty matching logic. Class: unclassified. CVSS: none published. Database severity: not stated. Fixed in: 0.103.10.
- RUSTSEC-2026-0098: Name constraints for URI names were incorrectly accepted. Class: unclassified. CVSS: none published. Database severity: not stated. Fixed in: 0.104.0-alpha.6.
- RUSTSEC-2026-0099: Name constraints were accepted for certificates asserting a wildcard name. Class: unclassified. CVSS: none published. Database severity: not stated. Fixed in: 0.104.0-alpha.6.
- RUSTSEC-2026-0104: Reachable panic in certificate revocation list parsing. Class: unclassified. CVSS: none published. Database severity: not stated. Fixed in: 0.104.0-alpha.7.
- RUSTSEC-2026-0382: Certificate verification may accept distrusted intermediates. Class: unclassified. CVSS: none published. Database severity: not stated. Fixed in: 0.104.0-alpha.8.
- GHSA-82j2-j2ch-gfr8: rustls-webpki: Denial of service via panic on malformed CRL BIT STRING. Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H. Database severity: HIGH. Fixed in: 0.104.0-alpha.7.
- GHSA-965h-392x-2mh5: webpki: Name constraints for URI names were incorrectly accepted. Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:N/I:L/A:N. Database severity: LOW. Fixed in: 0.104.0-alpha.6.
- GHSA-pwjx-qhcg-rvj4: webpki: CRLs not considered authoritative by Distribution Point due to faulty matching logic. Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:N/I:H/A:N. Database severity: MODERATE. Fixed in: 0.104.0-alpha.5.
- GHSA-xgp8-3hg3-c2mh: webpki: Name constraints were accepted for certificates asserting a wildcard name. Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:N/I:L/A:N. Database severity: LOW. Fixed in: 0.104.0-alpha.6.

### rustls-webpki 0.103.15

- RUSTSEC-2026-0382: Certificate verification may accept distrusted intermediates. Class: unclassified. CVSS: none published. Database severity: not stated. Fixed in: 0.104.0-alpha.8.

### zbus_names 4.3.4

- RUSTSEC-2026-0371: `zbus_names` is unmaintained. Class: unmaintained. CVSS: none published. Database severity: not stated. Fixed in: no fix listed.

### zip 7.4.0

- RUSTSEC-2026-0367:  Insecure Preservation of SUID/SGID Bits during ZIP Extraction Leading to Potential Privilege Escalation. Class: vulnerability. CVSS: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:H/I:H/A:H. Database severity: not stated. Fixed in: 9.0.0.
- RUSTSEC-2026-0368: zip: `ZipArchive::extract` creates symbolic links whose attacker-controlled targets are outside the destination directory. Class: unclassified. CVSS: none published. Database severity: not stated. Fixed in: 9.0.0.
- RUSTSEC-2026-0369: ZipStreamReader::extract() and ZipArchive::extract() apply Unix permissions through symlinks without confining the target. Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:H. Database severity: not stated. Fixed in: 9.0.0.
- RUSTSEC-2026-0429: zip: `ZipArchive::extract` aborts the process on a symlink entry with a large declared size. Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H. Database severity: not stated. Fixed in: 9.0.0.
- GHSA-8hxf-qr8p-62x4: zip: AES Entry HMAC Authentication Bypass on Premature EOF. Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:H/A:N. Database severity: MODERATE. Fixed in: 9.0.0.
- GHSA-9hj8-73fh-9963: zip: legacy Shrink/Reduce/Implode decoder: denial of service from attacker-controlled ZIP64 uncompressed size. Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H. Database severity: HIGH. Fixed in: 9.0.0.
- GHSA-hjqx-j4rw-g7xv: zip: Arbitrary file write outside the extraction directory, because ZipArchive::extract validates symlink targets lexically. . Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:H/A:H. Database severity: HIGH. Fixed in: 9.0.0.
- GHSA-m665-v7pm-7grj: zip: Critical Parser Differential & Security Control Bypass via Dual-Header Inconsistencies (Zip Cloaking) Leading to Arbitrary File Overwrite & RCE. Class: vulnerability. CVSS: CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:H/VI:H/VA:H/SC:H/SI:H/SA:L. Database severity: CRITICAL. Fixed in: 9.0.5.
- GHSA-q7v9-x93c-xqv3: zip: Unbounded Symlink-Target Handling Can Abort Or Exhaust Memory During Extraction. Class: vulnerability. CVSS: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H. Database severity: HIGH. Fixed in: 9.0.0.

### zvariant 5.15.0

- RUSTSEC-2026-0370: `zvariant` is unmaintained. Class: unmaintained. CVSS: none published. Database severity: not stated. Fixed in: no fix listed.

### zvariant_derive 5.15.0

- RUSTSEC-2026-0372: `zvariant_derive` is unmaintained. Class: unmaintained. CVSS: none published. Database severity: not stated. Fixed in: no fix listed.

## Coverage and limits

This report covers third-party dependency advisories matched against the committed Cargo.lock. The OSV database aggregates RustSec, GHSA and NVD records. It does not audit the application's own source code, bundled assets, fonts, document parsers or runtime behaviour, and it does not detect unknown (zero-day) flaws. A clean result means no matching advisory is published for the scanned versions, not that the software is free of defects. Scan again after upgrading or changing the lockfile.

