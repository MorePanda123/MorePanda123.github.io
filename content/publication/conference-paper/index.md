---
title: 'Optimal virtual tube planning and control for swarm robotics'

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - Pengda Mao
  - Rao Fu
  - Quan Quan

# Author notes (optional)
author_notes:
  - ''
  - ''
  - 'corresponding author'

date: '2024-04-23'
doi: ''

# Schedule page publish date (NOT publication's date).
publishDate: '2023-11-07'

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ['paper-journal']

# Publication name and optional abbreviated publication name.
publication: In *the international journal of robotics research*
publication_short: In *IJRR*

abstract: This paper presents a novel method for efficiently solving a trajectory planning problem for swarm robotics in cluttered environments. Recent research has demonstrated high success rates in real-time local trajectory planning for swarm robotics in cluttered environments, but optimizing trajectories for each robot is still computationally expensive, with a computational complexity from $O\left(k\left(n_t,\varepsilon \right)n_t^2\right)$ to $ O\left(k\left(n_t,\varepsilon \right)n_t^3\right)$ where $n_t$ is the number of parameters in the parameterized trajectory, $\varepsilon$ is precision and $k\left(n_t,\varepsilon \right)$ is the number of iterations with respect to $n_t$ and $\varepsilon$. Furthermore, the swarm is difficult to move as a group. To address this issue, we define and then construct the optimal virtual tube, which includes infinite optimal trajectories. Under certain conditions, any optimal trajectory in the optimal virtual tube can be expressed as a convex combination of a finite number of optimal trajectories, with a computational complexity of $O\left(n_t\right)$. Afterward, a hierarchical approach including a planning method of the optimal virtual tube with minimizing energy and distributed model predictive control is proposed. In simulations and experiments, the proposed approach is validated and its effectiveness over other methods is demonstrated through comparison.

# Summary. An optional shortened abstract.
summary: This paper presents a novel method for efficiently solving a trajectory planning problem for swarm robotics in cluttered environments.

tags:
  - Optimal Virtual Tube

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: ''
url_code: 'https://github.com/HugoBlox/hugo-blox-builder'
url_dataset: 'https://github.com/HugoBlox/hugo-blox-builder'
url_poster: ''
url_project: ''
url_slides: ''
url_source: 'https://github.com/HugoBlox/hugo-blox-builder'
url_video: 'https://youtube.com'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/pLCdAaMFLTE)'
  focal_point: ''
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects:
  - example

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: example
---

{{% callout note %}}
Click the _Cite_ button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}}

{{% callout note %}}
Create your slides in Markdown - click the _Slides_ button to check out the example.
{{% /callout %}}

Add the publication's **full text** or **supplementary notes** here. You can use rich formatting such as including [code, math, and images](https://docs.hugoblox.com/content/writing-markdown-latex/).
