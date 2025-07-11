-- Estimated Yield Calculation
-- Calculates box areas, average sample yield per m², scales to per Acre of land

SELECT 
  Year,
  Season,
  Country,
  PlotSize_acres,
  
  BoxAWidth * BoxALength AS BoxAArea,
  BoxBWidth * BoxBLength AS BoxBArea,

  BoxADryWeight / (BoxAWidth * BoxALength) AS YieldBoxA_per_m2,
  BoxBDryWeight / (BoxBWidth * BoxBLength) AS YieldBoxB_per_m2,

  ((BoxADryWeight / (BoxAWidth * BoxALength)) + (BoxBDryWeight / (BoxBWidth * BoxBLength))) / 2 AS AvgSampleYield_per_m2,

  (( 
    (BoxADryWeight / (BoxAWidth * BoxALength)) + 
    (BoxBDryWeight / (BoxBWidth * BoxBLength)) 
  ) / 2) * (PlotSize_acres * 4046.86) AS EstimatedYieldKG

FROM yield_metadata
WHERE 
  BoxAWidth > 0 AND BoxALength > 0 AND 
  BoxBWidth > 0 AND BoxBLength > 0
ORDER BY EstimatedYieldKG DESC;
