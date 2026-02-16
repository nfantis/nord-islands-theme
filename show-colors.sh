#!/usr/bin/env bash
# Display Nord Islands color scheme in the terminal
# Usage: ./show-colors.sh [dark|light]

set -euo pipefail

swatch() {
  # Print a colored swatch block using 24-bit true color
  local hex="${1#\#}"
  local r=$((16#${hex:0:2}))
  local g=$((16#${hex:2:2}))
  local b=$((16#${hex:4:2}))
  printf "\033[48;2;%d;%d;%dm      \033[0m" "$r" "$g" "$b"
}

variant="${1:-light}"

if [[ "$variant" == "dark" ]]; then
  # Dark theme ANSI colors
  ansi_names=( Black Red Green Yellow Blue Magenta Cyan White )
  ansi_hex=(   "#2E3440" "#BF616A" "#A3BE8C" "#EBCB8B" "#81A1C1" "#B48EAD" "#88C0D0" "#ECEFF4" )
  ansi_nord=(  "nord0"   "nord11"  "nord14"  "nord13"  "nord9"   "nord15"  "nord8"   "nord6"  )
  bright_hex=( "#4C566A" "#BF616A" "#A3BE8C" "#EBCB8B" "#81A1C1" "#B48EAD" "#8FBCBB" "#ECEFF4" )
  bright_nord=("nord3"   "nord11"  "nord14"  "nord13"  "nord9"   "nord15"  "nord7"   "nord6"  )

  ui_elements=(  "Background" "Foreground" "Cursor" "Cursor Text" "Cursor Guide" "Selection" "Selected Text" "Bold" "Link" "Match BG" "Badge" )
  ui_hex=(       "#21252D"    "#D8DEE9"    "#D8DEE9" "#21252D"    "#3B4252"      "#434C5E"   "#ECEFF4"       "#ECEFF4" "#88C0D0" "#EBCB8B" "#BF616A" )
  ui_nord=(      "(custom)"   "nord4"      "nord4"   "(custom)"   "nord1"        "nord2"     "nord6"         "nord6"   "nord8"   "nord13"  "nord11"  )
else
  # Light theme ANSI colors
  ansi_names=( Black Red Green Yellow Blue Magenta Cyan White )
  ansi_hex=(   "#3B4252" "#BF616A" "#A3BE8C" "#EBCB8B" "#5E81AC" "#B48EAD" "#88C0D0" "#E5E9F0" )
  ansi_nord=(  "nord1"   "nord11"  "nord14"  "nord13"  "nord10"  "nord15"  "nord8"   "nord5"  )
  bright_hex=( "#4C566A" "#BF616A" "#A3BE8C" "#EBCB8B" "#5E81AC" "#B48EAD" "#8FBCBB" "#ECEFF4" )
  bright_nord=("nord3"   "nord11"  "nord14"  "nord13"  "nord10"  "nord15"  "nord7"   "nord6"  )

  ui_elements=(  "Background" "Foreground" "Cursor" "Cursor Text" "Cursor Guide" "Selection" "Selected Text" "Bold" "Link" "Match BG" "Badge" )
  ui_hex=(       "#ECEFF4"    "#2E3440"    "#2E3440" "#ECEFF4"    "#D8DEE9"      "#D8DEE9"   "#2E3440"       "#2E3440" "#5E81AC" "#EBCB8B" "#5E81AC" )
  ui_nord=(      "nord6"      "nord0"      "nord0"   "nord6"      "nord4"        "nord4"     "nord0"         "nord0"   "nord10"  "nord13"  "nord10"  )
fi

echo ""
printf "\033[1mANSI Colors\033[0m\n"
printf "%-10s %-16s %-10s %-10s %s\n" "Slot" "Name" "Swatch" "Hex" "Nord"
printf "%.0s─" {1..60}; echo ""

for i in {0..7}; do
  printf "%-10s %-16s " "Ansi $i" "${ansi_names[$i]}"
  swatch "${ansi_hex[$i]}"
  printf "  %-10s %s\n" "${ansi_hex[$i]}" "${ansi_nord[$i]}"
done

for i in {0..7}; do
  slot=$((i + 8))
  printf "%-10s %-16s " "Ansi $slot" "Bright ${ansi_names[$i]}"
  swatch "${bright_hex[$i]}"
  printf "  %-10s %s\n" "${bright_hex[$i]}" "${bright_nord[$i]}"
done

echo ""
printf "\033[1mUI Colors\033[0m\n"
printf "%-16s %-10s %-10s %s\n" "Element" "Swatch" "Hex" "Nord"
printf "%.0s─" {1..60}; echo ""

for i in "${!ui_elements[@]}"; do
  printf "%-16s " "${ui_elements[$i]}"
  swatch "${ui_hex[$i]}"
  printf "  %-10s %s\n" "${ui_hex[$i]}" "${ui_nord[$i]}"
done

echo ""
