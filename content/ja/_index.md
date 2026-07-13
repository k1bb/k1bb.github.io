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
        url: uploads/resume.pdf
      headings:
        about: ''
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

  - block: markdown
    content:
      title: '📚 研究概要'
      subtitle: ''
      text: |-
        地球システムモデリングおよび大気と陸上植生の物理的相互作用（気候・植生相互作用）に関する研究を行っています。
        
        （※ここに日本語での詳細な研究概要や関心事項、将来の展望などを記載してください。）

        お気軽にご連絡ください 😃
    design:
      columns: '1'

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
      filters:
        folders:
          - publications
    design:
      view: citation

  - block: collection
    id: talks
    content:
      title: 学会発表
      filters:
        folders:
          - events
    design:
      view: citation

  - block: collection
    id: portfolio
    content:
      title: ポートフォリオ (Works)
      filters:
        folders:
          - project
    design:
      view: card

  - block: resume-skills
    id: hobbies
    content:
      title: 趣味・特技
      username: me_ja
---
