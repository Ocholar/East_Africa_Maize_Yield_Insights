SELECT
  Variety,
  Country,
  ROUND(AVG(
    (
      (BoxADryWeight / (BoxAWidth * BoxALength)) +
      (BoxBDryWeight / (BoxBWidth * BoxBLength))
    ) / 2 * (PlotSize_acres * 4046.86)
  ), 2) AS AvgEstimatedYieldKG,
  COUNT(*) AS Trials
FROM yield_metadata
WHERE BoxAWidth > 0 AND BoxALength > 0 AND BoxBWidth > 0 AND BoxBLength > 0
GROUP BY Variety, Country
HAVING Trials >= 5
ORDER BY AvgEstimatedYieldKG DESC;
