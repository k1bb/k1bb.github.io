#!/usr/bin/env bash
set -e

SRC="/Users/andrew/Downloads/portfolio"
JA_PROJ="content/ja/project"
EN_PROJ="content/en/project"

# Remove old dtp directory
rm -rf "$JA_PROJ/dtp" "$EN_PROJ/dtp"

function create_project() {
    local proj=$1
    local title_ja=$2
    local title_en=$3
    local date=$4
    local featured_img=$5
    shift 5
    local images=("$@")

    for lang in ja en; do
        local dir="content/${lang}/project/${proj}"
        mkdir -p "$dir"

        # Copy images
        for img in "${images[@]}"; do
            if [ -f "$SRC/$img" ]; then
                cp "$SRC/$img" "$dir/"
            fi
        done

        # Set featured image
        if [ -f "$dir/$featured_img" ]; then
            cp "$dir/$featured_img" "$dir/featured.png"
        fi

        # Create index.md
        local title="$title_ja"
        if [ "$lang" == "en" ]; then
            title="$title_en"
        fi

        cat <<EOF > "$dir/index.md"
---
title: "$title"
date: $date
tags:
  - DTP
  - Design
---

EOF
        for img in "${images[@]}"; do
            if [ -f "$SRC/$img" ]; then
                echo "![${img%.*}]($img)" >> "$dir/index.md"
                echo "<br><br>" >> "$dir/index.md"
            fi
        done
    done
}

create_project "2019kyoj" "第45回　京都大学グリークラブ・東京大学音楽部合唱団コールアカデミー　ジョイントコンサート" "The 45th Kyoto Univ Glee Club & Tokyo Univ Call Academy Joint Concert" "2019-06-01" "2019京J_チラシ.png" "2019京J_チラシ.png" "2019京J_パンフ.png" "2019京J_チケット.png" "2019京J_CD.png"
create_project "2019teien" "東京大学音楽部合唱団コールアカデミー　第66回定期演奏会" "The 66th Regular Concert of Tokyo Univ Call Academy" "2019-12-01" "2019定演_チラシ.png" "2019定演_チラシ.png" "2019定演_パンフ.png" "2019定演_チケット.png"
create_project "nemure" "音楽がつむぐ平和への願い「演奏会」" "Concert 'Prayers for Peace Woven by Music'" "2021-01-01" "眠れ幼き魂_チラシ表.png" "眠れ幼き魂_チラシ表.png" "眠れ幼き魂_チラシ裏.png"
create_project "hakumei" "Chorus Meets|合唱団piututti｜笹の葉合唱団 ジョイントコンサート「薄明の向こう側へ」" "Joint Concert 'Beyond the Twilight'" "2022-01-01" "薄明_チラシ表.png" "薄明_チラシ表.png" "薄明_チラシ裏.png" "薄明_パンフ.png"
create_project "summer-school-2023" "第35回日本気象学会夏季特別セミナー" "The 35th MSJ Summer Special Seminar" "2023-08-01" "気象夏の学校2023.png" "気象夏の学校2023.png"
create_project "bannan-2024" "令和6年度　磐田南高校（旧制見付中学校）同窓会関東支部総会・懇親会" "Reiwa 6 Bannan High School Alumni Association Kanto Branch General Meeting" "2024-01-01" "磐南同窓会関東支部総会2024.png" "磐南同窓会関東支部総会2024.png"
create_project "bannan-2025" "令和7年度　磐田南高校（旧制見付中学校）同窓会関東支部総会・懇親会" "Reiwa 7 Bannan High School Alumni Association Kanto Branch General Meeting" "2025-01-01" "磐南同窓会関東支部総会2025.png" "磐南同窓会関東支部総会2025.png"

echo "Portfolio setup complete!"
