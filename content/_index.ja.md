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
        text: 履歴書ダウンロード
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

  - block: markdown
    id: research-experience
    content:
      title: 研究経験（詳細）
      text: |
        ### 博士課程：最適性理論に基づく光合成・水理学統合モデルの開発とアマゾン熱帯林の臨界点解明
        近年、温暖化や極端な乾燥に伴い、アマゾン熱帯林が不可逆的なサバナ化へと向かう「Amazon dieback」が懸念されています。しかし、既存の気候モデルは植物生理学的な構造的欠陥を抱えており、予測に大きな不確実性が存在します。そこで私は、炭素獲得と水損失のリスクを最適化する理論（P-Hydro）に基づき、植物生理学と水理学を統合した新規陸面モジュール「ATAMI」を開発しました。これを日本の地球システムモデル MIROC-ES2L に実装し、過剰な遮断蒸発の抑制や深層吸水効果を導入することで、水・炭素循環の劇的な精緻化に成功しています。現在はこのモデルを用いて、極端な大気乾燥下でのアマゾンの降水サイクル崩壊に至る水文学的臨界点を定量的に特定する研究を進めています。

        ### 修士課程：地球システムモデルにおける陸上植生がENSO再現性に与える影響
        熱帯太平洋の主要な気候変動現象であるエルニーニョ・南方振動（ENSO）に対し、陸上植生がどのような遠隔影響（テレコネクション）を与えるのかを解明しました。MIROC-ES2Lを用いた数値実験により、動的な葉面積指数（LAI）の導入が、南米アマゾン上空の局所的な高気圧性偏差と大気沈降流を誘起し、熱力学的応答として太平洋上のWalker循環を変調させることを証明しました。これにより、東部赤道太平洋の冷舌バイアスが緩和され、ENSO振幅が増幅するという、陸域から海洋への平均気候場を経由した動的な力学経路を明らかにしました。

        ### 学士課程：放射対流平衡系における雲の自己組織化メカニズムの探求
        雲解像モデル（SCALE-RM）を用いた放射対流平衡（RCE）のシミュレーションを通じて、積乱雲が自発的に局所化する「自己組織化」現象のメカニズムを研究しました。領域サイズや空間スケールの制約がもたらす「見かけの定常状態」を同定し、組織化の崩壊が自由対流圏ではなく境界層からの水蒸気流入を契機として進行することを力学的に解明しました。

        ### モデリング技術の高度化と国際プロジェクトへの貢献
        衛星観測データの解析や、ソフトウェアエンジニアリングを通じた研究基盤の高度化にも注力しています。
        - **CMIP7向け境界条件の構築**: GEDIやICESat-2などの衛星観測データを用いて全球の高解像度な樹冠高・樹冠底高データセットを構築し、次期気候モデル（MIROC7）の地表面粗度パラメータとして実装しました。
        - **オープンソースツールの開発**: MIROCの独自の出力フォーマットをPython/xarrayでシームレスに解析するためのライブラリ「[xgtool3](https://github.com/k1bb/xgtool3)」を単独で開発・公開し、データ処理パイプラインの自動化を主導しています。
        - **国際プロジェクトへの参画**: 放射対流平衡実験の国際相互比較プロジェクト「RCEMIP-II」にMIROC6の代表メンバーとして参画し、多数の海外研究者と連携しながら大規模な国際共同研究に貢献しています。

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
      title: グラフィックデザイン
      count: 6
      filters:
        folders:
          - project
        tags:
          - DTP
    design:
      view: article-grid
      columns: 3

  - block: markdown
    id: photography
    content:
      title: 写真
      text: >
        [note.com](https://note.com/) など外部サービスで公開する予定です。（Coming soon...）
---
