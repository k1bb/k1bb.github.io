---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2022-10-24
type: landing

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: me
      text: ''
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: uploads/resume.pdf
      headings:
        about: ''
        interests: ''
    design:
      # Use the new Gradient Mesh which automatically adapts to the selected theme colors
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
      title: Experience
      username: me
    design:
      date_format: 'January 2006'
      is_education_first: false

  - block: collection
    id: papers
    content:
      title: Featured Publications
      count: 50
      filters:
        folders:
          - publications
    design:
      view: citation

  - block: collection
    id: talks
    content:
      title: Recent & Upcoming Talks
      count: 50
      filters:
        folders:
          - events
    design:
      view: citation

  - block: collection
    id: portfolio
    content:
      title: Portfolio (Works)
      filters:
        folders:
          - project
    design:
      view: card

  - block: resume-skills
    id: hobbies
    content:
      title: Hobbies & Skills
      username: me
---
