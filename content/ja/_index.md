---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2022-10-24
type: landing

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/` or `data/authors/`)
      username: me_ja
      text: ''
      # Show a call-to-action button under your biography? (optional)
      button:
        text: 履歴書 (CV) ダウンロード
        url: /uploads/resume.pdf
      headings:
        about: '研究概要'
        interests: ''
    design:
      background:
        gradient_mesh:
          enable: true
      name:
        size: md
      avatar:
        size: medium
        shape: circle

  - block: resume-experience
    id: experience
    content:
      title: 経歴
      username: me_ja
    design:
      date_format: '2006年1月'
      is_education_first: false

  - block: collection
    id: papers
    content:
      title: 論文
      count: 50
      filters:
        folders:
          - publications
    design:
      view: citation

  - block: collection
    id: talks
    content:
      title: 学会発表
      count: 50
      filters:
        folders:
          - events
    design:
      view: citation

  - block: collection
    id: graphic-design
    content:
      title: デザイン制作 (Graphic Design)
      filters:
        folders:
          - project
        tags:
          - DTP
    design:
      view: article-grid
      columns: 3

  - block: collection
    id: photography
    content:
      title: 写真 (Photography)
      filters:
        folders:
          - project
        tags:
          - 写真
    design:
      view: article-grid
      columns: 3
---
