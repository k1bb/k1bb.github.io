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
        
        特に、日本の地球システムモデル「MIROC-ES2L」の開発と高度化に携わり、葉面積指数（LAI）の動的シミュレーションや樹冠高などの現実的な植生構造の導入が、エルニーニョ・南方振動（ENSO）をはじめとする気候変動や大気大循環にどのような影響を与えるのかを解明することを目指しています。また、最適性理論に基づく最新の光合成・蒸散モジュールの開発や、放射対流平衡（RCE）系における雲の自己組織化に関する研究など、幅広いスケールの大気・植生結合プロセスの探求にも取り組んでいます。

        共同研究やご質問など、お気軽にご連絡ください 😃
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
