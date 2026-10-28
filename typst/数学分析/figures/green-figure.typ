// Green 公式中绕开奇点的环域；外边界逆时针、内边界顺时针。
#figure(
  block(width: 70mm, height: 72mm)[
    #let point(radius, angle) = (
      35mm + radius * calc.cos(angle),
      35mm - radius * calc.sin(angle),
    )
    #let arc(radius, start, end, steps) = range(steps + 1).map(i => point(radius, start + (end - start) * i / steps))
    #let boundary = arc(30mm, 2deg, 358deg, 120) + arc(8mm, -4deg, -356deg, 80)
    #place(top + left, polygon(..boundary, fill: none, stroke: 0.8pt))
    // 定向箭头。
    #place(top + left, line(start: point(30mm, 75deg), end: point(30mm, 85deg), stroke: 0.5pt))
    #place(top + left, polygon(point(30mm, 85deg), (39.1mm, 4.6mm), (39.2mm, 6.2mm), fill: black, stroke: none))
    #place(top + left, line(start: (35mm, 43mm), end: (33mm, 43mm), stroke: 0.5pt))
    #place(top + left, polygon((33mm, 43mm), (34.5mm, 42.4mm), (34.5mm, 43.6mm), fill: black, stroke: none))
    #place(top + left, dx: 34.6mm, dy: 34.6mm, circle(radius: 0.4mm, fill: black))
    #place(top + left, dx: 34mm, dy: 37mm, $O$)
    #place(top + left, dx: 42mm, dy: 29mm, $rho$)
    #place(top + left, dx: 63mm, dy: 29mm, $R$)
    #place(top + left, dx: 23mm, dy: 26mm, $gamma_rho$)
    #place(top + left, dx: 44mm, dy: 0mm, $gamma_R$)
  ],
  caption: [],
) <fig8.1>
