Schedule2
=========
Produces a weekly schedule for posting.

**Note**: identical to the `wit_schedule` class (see `old`) aside from minor cosmetic changes.

## Usage
See the example **schedule2.tex** document.

1. `\documentclass{wit_schedule2}`
2. ...
3. `\author{ **your name here** }`
4. `\date{ **semester designation here** }`
6. ...
6. `\begin{document}`
8. ...
9. `\begin{ScheduleWeek}`
10. `\slotclass{ **see below** }`
11. `\slotoffice{ **see below** }`
12. `\slotaway{ **see below** }`
13. `\end{ScheduleWeek}`
14. ...
15. `\end{document}`

### ScheduleWeek slots
Within a `ScheduleWeek` environment, you populate your week by the slot* commands. Each has the same syntax (4 required arguments), differing only in the colors assigned to each resulting block:

1. Day of the week (m, t, w, h, f): only a single, lower-case letter allowed.
2. Slot number (1-18): an index into the schedule, where 1 refers to 8am and 18 refers to 4:30pm. **Note** that you can optionally use a set of "time code" commands of the pattern `\tcRd[H]` (R=Roman Numeral in caps, d={am, pm} lower-case, H in caps is an optional indication of :30; for example `\tcXIamH` will resolve to the slot for 11:30AM and `\tcIIpm` will resolve to the slot for 2PM)
3. Text: whatever text you want to be displayed in the cell(s).
4. Number of slots (>=1): if the entry spans multiple slots, provide the number here. **Note** that if this is greater than 1, the slot number (#2) should refer to the _bottom_ slot (i.e. greatest slot number).