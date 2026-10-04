#import "@preview/unofficial-sorbonne-presentation:0.3.1": *

// ===== Оформление кода =====

#let code-ink = rgb("#334A52")
#let code-muted = rgb("#5F6F75")

#set raw(
  theme: "eo.tmTheme",
  tab-size: 2,
)

#show raw.where(block: true): set text(
  fill: code-ink,
  font: "DejaVu Sans Mono",
)

#show raw.where(block: false): set text(
  fill: code-muted,
  size: 0.9em,
  font: "DejaVu Sans Mono",
)

// ===== Настройки презентации =====

#show: template.with(
  title: [Задание 3 \ Информационная архитектура],
  short-title: [Задание 3],
  short-author: [Добрышкин В. А. Таратенко А.],
  subtitle: [],
  author: [Владимир Добрышкин \ Алексей Таратенко],
  affiliation: [Поток ППИ 1.3],
  faculty: "univ",
  date: "04.10.2026",
  aspect-ratio: "16-9",
  show-outline: false,
  progress-bar: "bottom",
  logo-slide: image("/img/logo/itmo1.png"),
  logo-transition: image("/img/logo/itmo2.png"),
  dark-mode: false,
)

// ===== Слайд с увеличенной схемой =====

#let scheme-slide(title, path) = {
  // Настройки действуют только внутри этого слайда.
  set page(
    margin: 0pt,
    foreground: none,
  )

  slide(is-special: true)[
    #layout(size => {
      stack(
        dir: ttb,
        spacing: 8pt,

        align(
          left,
          text(
            size: 19pt,
            weight: "bold",
            title,
          ),
        ),

        image(
          path,
          width: size.width,
          height: size.height - 38pt,
          fit: "contain",
        ),
      )
    })
  ]
}

// ===== Схемы =====

#scheme-slide(
  [Разделы и вложенные страницы системы],
  "img/task/goalissimo_navigation.png",
)

#scheme-slide(
  [Команды и участие в турнире],
  "img/task/01_teams_participation.png",
)

#scheme-slide(
  [Структура турнира и жеребьёвка],
  "img/task/02_tournament_draw.png",
)

#scheme-slide(
  [Расписание и связи матчей],
  "img/task/03_schedule_matches.png",
)

#scheme-slide(
  [Результаты матчей и статистика],
  "img/task/04_results_statistics.png",
)

#scheme-slide(
  [Пользователи и права доступа],
  "img/task/05_users_access.png",
)