--VERSION 2.2--
key="0nix"local a=load((function(b,c)function bxor(d,e)local f={{0,1},{1,0}}local g=1;local h=0;while d>0 or e>0 do h=h+f[d%2+1][e%2+1]*g;d=math.floor(d/2)e=math.floor(e/2)g=g*2 end;return h end;local i=function(b)local j={}local k=1;local l=b[k]while l>=0 do j[k]=b[l+1]k=k+1;l=b[k]end;return j end;local m=function(b,c)if#c<=0 then return{}end;local k=1;local n=1;for k=1,#b do b[k]=bxor(b[k],string.byte(c,n))n=n+1;if n>#c then n=1 end end;return b end;local o=function(b)local j=""for k=1,#b do j=j..string.char(b[k])end;return j end;return o(m(i(b),c))end)({1634,1701,1245,1774,1394,2266,2057,1358,1866,1933,1760,2402,1957,1554,2426,1849,1311,1723,2000,2272,2148,2160,2548,1873,2088,1519,2129,2013,2333,2012,2146,2087,1276,2152,1329,1357,2385,1602,1769,1586,1784,1372,2198,2140,2141,1677,1280,1560,1908,2133,2203,1927,1567,2451,2075,1799,1392,1423,1693,1768,1712,2329,2038,1306,2083,2077,1863,1755,1875,1419,1564,1347,1252,1977,1544,2511,1893,2519,1620,2046,2181,1339,1503,1973,1989,1583,1425,1492,2229,2006,2415,2422,2584,1928,2526,1247,1457,1594,2445,1285,1298,2478,1352,1942,1777,1582,2335,2112,2074,1589,1895,1462,1565,2322,1484,2039,1624,1830,1470,2177,2614,2183,1783,2204,1776,1680,1665,2228,1935,2225,2325,1825,2277,1348,1468,2213,1490,1914,2453,1389,2196,1870,1962,2358,2532,2156,1838,2145,1765,2354,1435,1703,2255,2085,1785,1822,1367,2024,2115,1260,2387,1255,2500,1796,2078,2439,1741,2379,1993,1621,1458,2195,1808,1767,2365,1629,2585,1317,1307,1874,2215,2595,1815,2030,2564,2187,1529,2090,2261,1453,1546,2201,2189,1684,1790,1766,1714,1833,1549,2542,1896,1605,1287,2159,2113,2576,1322,1405,1491,1913,1828,2592,1488,1918,2097,2588,1974,1881,1437,1610,2253,1900,1497,2459,1805,2468,1598,1664,1645,1547,1370,2420,1770,2463,2179,2286,2041,2541,1926,1331,1421,2103,2443,2265,2603,1387,1986,1300,1489,2294,1810,1709,1360,1820,2553,2407,2002,1499,2153,1857,1631,1972,1614,2602,1558,2458,1861,1256,1473,1349,2072,2609,1354,2436,1800,2591,1585,1951,2393,2037,1877,2425,1262,2098,1342,2486,1902,2194,1530,2312,2315,1842,1732,1969,2559,1872,2216,2372,2569,2399,1574,2276,2498,1428,2593,1646,2421,1401,2348,1611,1924,1541,1445,2412,1764,1691,1844,2596,1968,2151,1599,1521,1427,1801,2378,2304,1906,2447,2597,1517,2178,2516,2302,2538,2605,2320,1295,1446,2135,2044,2364,2531,1672,2604,2345,2525,2368,1420,2029,1374,2064,1577,1729,2222,1976,2003,1474,2574,2339,1279,2327,2440,1408,1659,2102,2476,1635,2173,1639,2258,1852,1996,1288,2560,1515,2172,1447,1414,2506,1353,1742,2025,2515,1671,1571,1303,2107,1251,2127,1669,1379,1905,1417,2487,2491,2267,2137,2533,2174,1578,1674,1485,1975,1466,2508,2094,1272,1449,2410,1384,2296,2164,1840,1670,1708,2349,2191,1862,1762,2279,1806,1991,1878,2209,1911,1274,1563,1662,1831,2450,1894,1559,1472,1773,1779,2021,2558,2281,2193,1932,1999,2188,1636,2240,1814,2527,2366,1772,1380,1388,1364,1407,1257,2063,1284,1781,2488,2311,2033,1720,2082,2092,2446,1771,1832,2205,1626,2534,1386,1319,1548,2501,2067,2143,2316,1869,1305,1619,2530,1615,1650,1480,1552,1350,2273,2235,1513,1454,1965,2457,2353,2239,1756,2147,2381,1899,1269,2299,2224,2514,1518,1572,1416,1912,1431,2467,2200,2096,2182,1411,1887,1917,2262,1649,1702,2356,2462,1259,1264,2111,1553,1422,1459,1537,1687,2343,2270,1587,1666,1297,2442,2100,1396,1909,2068,1696,2608,2369,1955,1623,1787,2361,2571,2180,1510,1653,1584,1436,2119,1439,2291,1556,2520,2260,2117,2352,2612,2587,1514,2461,1309,1604,2404,2577,1355,1922,2167,2128,1566,2573,2049,1997,2241,1803,2232,1316,2010,2197,2150,2157,2040,1292,1539,2350,2563,2474,1261,2015,2122,1888,1464,1335,2237,1438,1324,2293,2017,2050,1393,1496,2016,1700,1381,2550,2295,1871,2332,1954,1956,2580,1865,1504,1277,1469,1724,2413,1550,2095,1821,1557,2060,2427,2319,2004,1823,1622,1516,1268,1882,1751,1373,2359,1952,1673,1655,1452,1579,1757,1460,2238,1351,1859,1829,2424,2059,1483,1418,2430,2306,1440,2346,1412,1953,1944,1892,1966,1920,2470,2259,2318,2176,2342,1834,1281,1836,2606,2496,1398,1593,1681,2482,1290,1883,1994,1929,2287,1744,1699,2192,2341,1813,2269,1685,1970,1410,1747,1735,1479,1934,1403,2492,1950,1244,1402,2469,2494,1613,2026,1763,1931,1711,2556,2324,1740,2398,1668,2562,1788,1250,2481,1533,2566,1625,1363,2489,1733,2544,1426,1979,2543,2347,2513,1637,2535,1415,2223,2245,2022,1925,1949,1738,1846,1382,2578,1791,2317,2570,2579,1988,2414,2309,2475,2264,1254,1640,1456,1628,1643,2502,1538,1718,2582,1657,2014,1555,1759,2065,2234,2199,1633,2069,2066,2280,2186,1978,2405,2236,1451,2233,2131,1478,1321,2023,2438,2480,1694,2043,2158,1308,1739,1506,1524,1879,1921,1789,1678,1987,2220,1938,2005,2104,1273,2417,1835,1527,1930,2375,2499,1752,2218,1413,1283,2466,1984,1876,1632,2388,1746,1467,2298,2389,1903,1343,1856,2611,1710,1361,2221,1294,2554,1542,2268,2607,2001,1858,1246,2400,2510,1811,2373,1946,2507,1406,2171,1376,2009,2114,1588,2242,2390,1848,2093,1651,1590,2397,2589,1826,2184,1487,1325,2555,2465,1675,2275,2231,1248,1890,1326,2120,1253,1824,2523,2282,2557,1293,2575,2058,2008,2601,1818,1721,1761,1885,1318,1630,1430,1534,2310,2101,2274,2357,2551,2190,2061,1432,1606,1441,1344,1897,1455,1780,1591,2144,1998,2522,2540,2132,2154,1312,1359,1531,2437,1498,1795,2610,2254,1581,2079,1429,2401,1289,1409,1642,2136,2256,2370,2572,2018,2374,2169,2599,1501,1340,1607,1855,1981,1320,1346,1424,1864,1509,1715,1648,1551,2464,1937,2472,2433,2118,1654,1595,1725,2504,2162,1500,2485,2483,1523,2168,1397,2081,2300,2207,1705,2408,1385,1816,1383,2321,1282,1782,2206,2371,1990,2211,1365,2110,1683,1315,1812,1891,1958,1707,1960,1568,1985,2076,1901,2285,2528,2539,2138,1704,1508,1461,2337,1898,1561,1919,2212,2594,1286,2105,1807,1947,1717,1706,2055,2130,1961,1880,1750,1471,1749,1332,2251,2411,1722,1433,2170,1573,1692,1338,1731,2284,2142,2166,2155,1853,1302,1745,2288,2561,1682,1940,2377,1658,1719,1676,2454,1265,1580,2460,2568,1617,1434,1301,2149,1310,2219,2449,1296,1854,2070,2305,1333,1249,2054,2202,2521,1362,2586,2444,1505,1713,1802,1596,2125,2313,1867,2565,2380,1570,1442,2583,1734,2244,1737,2071,2080,2263,2161,2091,1907,1753,2409,2452,1845,1910,1327,2419,2056,1540,2331,1507,1278,2505,1395,1334,1689,1959,2429,2124,1916,2214,2108,1336,2297,1667,1841,2334,1743,2330,2045,2416,2226,1661,1904,1827,2363,1486,1443,2479,2248,2392,2139,2089,1688,2247,1647,2382,1263,2252,1884,1600,1754,2418,1522,2581,2175,1644,2613,2441,1627,1943,1982,1923,2545,1860,2484,2035,1748,2086,1804,2308,2163,1528,2512,2338,1545,1983,2394,1837,1850,2590,1794,1328,1995,2456,1652,1851,1889,1345,1679,1728,2106,2428,2471,2123,2509,1266,1575,1992,2423,1258,1597,2217,2362,2323,1536,1798,2493,1641,2257,2497,1797,2376,2210,2314,1809,1369,2403,2355,1371,1939,2020,1526,2567,2278,1727,2537,2301,1608,2503,1535,1375,1337,1476,2549,2042,2036,1793,1477,1695,2249,1690,2448,1980,2552,1786,1377,1400,1698,2328,2434,1948,1967,1482,1843,2047,1299,1450,2495,2384,1758,2518,2289,2396,1945,1465,1271,1963,1697,-1,89,5,26,29,29,0,94,16,85,23,12,2,27,61,39,23,113,10,0,26,36,96,29,116,29,67,182,84,8,88,42,208,66,84,47,22,64,18,22,6,96,88,16,88,90,27,28,49,11,92,0,92,1,26,96,100,11,68,113,15,71,66,117,15,99,107,29,115,29,108,190,16,113,78,70,99,10,29,73,62,10,28,26,61,85,8,38,114,68,29,88,26,68,12,92,94,6,11,73,95,16,96,12,2,4,71,59,85,8,69,94,16,246,28,88,15,68,94,6,11,12,103,41,25,18,11,27,13,26,100,103,26,73,25,154,16,66,12,58,103,94,113,84,78,27,88,69,93,68,15,68,8,13,26,80,12,99,113,0,26,94,88,68,81,29,23,89,41,69,68,78,57,96,18,3,26,114,57,11,28,25,96,6,12,117,94,26,57,57,28,22,11,23,45,11,8,26,30,84,113,12,94,15,25,37,10,114,12,17,30,17,2,1,84,0,5,26,57,80,189,6,22,13,89,12,99,6,12,82,68,85,85,61,73,13,22,66,181,29,12,99,49,99,95,16,117,68,16,113,95,196,141,25,29,2,15,94,70,9,89,22,11,89,73,113,13,73,75,105,15,29,10,96,28,61,28,196,41,11,25,8,129,61,73,73,96,67,95,151,38,90,85,31,80,11,38,0,10,73,18,71,27,12,26,99,8,57,100,74,84,11,38,31,22,82,55,117,29,148,12,0,25,94,89,1,206,12,120,100,15,88,1,89,113,27,94,43,42,28,100,42,95,22,29,11,39,113,88,217,88,78,68,28,23,84,16,67,246,8,99,7,70,103,26,12,175,29,29,126,88,65,69,116,44,76,78,29,0,103,25,57,90,12,0,7,88,6,85,100,12,116,13,12,12,62,92,89,39,92,88,6,16,103,12,61,0,1,96,114,70,17,15,16,68,100,1,197,28,20,125,69,13,83,73,10,11,78,12,13,103,83,85,57,70,11,43,0,15,28,30,99,7,51,95,43,15,26,29,25,28,16,70,63,99,99,99,29,11,29,18,96,99,68,81,29,17,61,58,16,10,57,23,198,17,5,114,22,0,72,7,99,7,243,113,85,89,90,29,82,12,8,73,149,20,13,113,61,73,16,94,58,57,113,2,4,27,4,10,12,96,35,59,90,7,7,26,29,12,100,13,4,68,113,11,29,28,85,113,12,4,29,115,81,85,26,12,12,113,84,73,83,29,12,67,17,116,99,7,199,12,13,48,27,10,85,88,73,12,12,103,27,66,57,0,88,1,29,82,10,57,68,12,57,138,26,191,23,12,80,58,94,23,29,25,73,69,2,85,57,57,11,83,85,16,27,26,25,72,23,94,89,11,117,134,58,114,26,57,6,96,5,90,11,16,67,10,65,12,0,96,78,12,13,25,118,23,7,100,27,86,25,89,61,94,96,73,82,70,94,92,57,73,239,12,70,103,67,12,0,81,12,13,68,89,45,12,11,6,17,60,29,80,8,103,58,83,29,57,113,78,78,153,4,12,78,68,84,80,26,68,12,85,100,16,78,64,12,117,23,78,95,85,204,113,68,29,61,94,1,29,40,12,12,29,103,0,30,11,57,16,113,33,57,69,12,65,13,23,7,99,145,87,22,96,73,4,12,68,10,81,16,14,73,0,90,8,11,11,17,12,22,88,32,5,99,61,113,103,113,89,11,71,26,113,1,82,29,17,68,63,117,11,1,156,61,12,116,198,11,25,11,12,92,28,26,192,81,27,113,68,99,41,11,5,20,57,117,201,30,12,233,82,0,61,6,113,68,85,26,25,29,88,80,10,134,99,78,220,48,248,23,23,26,27,15,95,84,113,7,100,96,90,70,57,73,67,20,67,73,219,84,12,68,103,81,23,11,65,84,58,224,13,12,16,115,68,10,58,99,103,26,103,30,0,12,16,88,10,125,103,27,117,26,26,27,13,0,23,29,61,88,99,96,11,42,94,42,10,67,68,82,78,129,123,29,12,65,78,126,103,197,16,33,64,100,29,23,94,81,103,94,11,61,11,74,7,5,69,11,10,11,100,7,29,99,81,11,117,29,66,90,97,61,1,89,12,78,71,12,29,8,7,68,27,39,29,29,5,16,2,15,29,26,103,4,68,99,85,99,65,17,11,118,11,0,10,0,25,94,30,16,103,99,25,171,113,28,57,15,27,12,92,68,124,81,1,29,26,8,99,13,66,28,241,20,92,167,28,96,28,11,0,10,90,16,26,27,57,7,53,8,99,255,7,103,6,1,66,16,92,29,85,15,29,70,12,33,85,117,64,10,17,11,23,43,27,3,18,17,95,12,31,11,82,96,114,6,29,27,176,12,12,16,117,11,61,129,0,11,12,0,61,88,66,8,78,73,42,93,65,2,89,83,234,68,69,11,103,26,15,24,65,15,28,0,96,40,12,99,7,96,73,92,68,117,10,69,12,96,68,30,57,115,103,66,44,211,113,33,12,85,25,73,84,69,16,26,96,18,38,33,85,17,25,28,114,76,6,1,99,66,13,73,16,100,26,61,99,71,4,0,66,12,100,96,30,29,10,89,4,11,24,117,57,96,73,117,128,58,26,84,114,100,126,94,12,65,26,10,18,52,11,179,12,99,113,111,73,15,113,30,10,68,13,0,94,13,96,25,29,88,26,100,103,44,23,29,82,206,103,58,92,10,28,15,2,7,117,64,96,90,84,99,1,90,115,26,2,99,84,103,73,100,64,4,29,85,11,68,71,96,42,12,103,78,0,32,22,57,114,11,0,1,169,2,57,10,10,7,62,23,64,43,30,57,10,137,27,73,28,11,57,29,85,7,27,6,113,116,20,19,5,84,27,89,7,23,47,12,2,23,12,25,52,28,7,30,70,29,26,127,71,25,66,22,139,0,39,118,49,22,81,208,57,11,61,88,0,17,22,24,23,30,248,7,94,81,99,10,40,12,2,103,23,68,12,11,7,47,90,58,92,26,100,26,73,25,34,94,99,26,33,100,81,11,99,103,67,29,16,92,13,26,13,30,11,27,60,88,58,10,29,10,85,175,73,247,94,23,86,80,65,13,17,85,25,81,26,85,22,81},key))if a then a()else print("WRONG PASSWORD!")end