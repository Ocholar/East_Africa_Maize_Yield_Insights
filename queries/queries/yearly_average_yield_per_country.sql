SELECT
  Year,
  Country,
  ROUND(AVG(
    (
      (BoxADryWeight / (BoxAWidth * BoxALength)) +
      (BoxBDryWeight / (BoxBWidth * BoxBLength))
    ) / 2 * (PlotSize_acres * 4046.86)
  ), 2) AS AvgEstimatedYieldKG
FROM yield_metadata
WHERE BoxAWidth > 0 AND BoxALength > 0 AND BoxBWidth > 0 AND BoxBLength > 0
GROUP BY Year, Country
ORDER BY Year ASC;
