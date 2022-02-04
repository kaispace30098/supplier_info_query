SELECT    i.SKU AS item,
          sum(i.quantity) AS qty,
          i.status
FROM include i
          LEFT JOIN
          product p ON p.SKU = i.SKU
WHERE     p.vendor = "Sunshine"
GROUP BY  i.status,
          i.SKU;