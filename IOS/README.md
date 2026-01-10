# Mtech for Apple TV (A1469, iOS 7.7 Jailbreak)

## Status: Pending Implementation

This folder will contain the Apple TV 3rd Gen port of Mtech.

## Critical Constraints

- **Device:** Apple TV 3rd Gen (A1469)
- **Chip:** Apple A5 (32-bit ARM)
- **iOS:** 7.7 with Jailbreak
- **RAM:** 512MB (very limited)

## Recommended Approaches

### Option A: Kodi + IPTV Simple Client (Recommended)
1. Install Kodi via jailbreak
2. Export channels to M3U format
3. Configure IPTV Simple Client addon

### Option B: Custom Objective-C App
- Requires Xcode 5.x (last to support iOS 7)
- macOS 10.9-10.11 for development
- Minimal UI for memory constraints

## Sideloading Instructions

1. SSH into Apple TV: `ssh root@<apple-tv-ip>`
2. Default password: `alpine`
3. Copy .ipa to device
4. Install via dpkg/Cydia

---

*Last updated: 2026-01-10*
