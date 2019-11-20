#####################
### Gathers data on user charges in practical help for LTC patients
### table: https://www.ssb.no/en/statbank/table/04898
### Time period: 2004-2016
### Municipalities: classification "All municipalities"
###
### Henning Øien, October 2019
#####################


# OBS! run 0_Master.R before running this code. It sets directiories and loads packages.


url <- 'https://data.ssb.no/api/v0/en/table/04898/'



call <- '{
  "query": [
    {
      "code": "Region",
      "selection": {
        "filter": "agg_single:KostraKommuner",
        "values": [
          "0101",
          "0104",
          "0105",
          "0106",
          "0111",
          "0118",
          "0119",
          "0121",
          "0122",
          "0123",
          "0124",
          "0125",
          "0127",
          "0128",
          "0135",
          "0136",
          "0137",
          "0138",
          "0211",
          "0213",
          "0214",
          "0215",
          "0216",
          "0217",
          "0219",
          "0220",
          "0221",
          "0226",
          "0227",
          "0228",
          "0229",
          "0230",
          "0231",
          "0233",
          "0234",
          "0235",
          "0236",
          "0237",
          "0238",
          "0239",
          "0301",
          "0402",
          "0403",
          "0412",
          "0415",
          "0417",
          "0418",
          "0419",
          "0420",
          "0423",
          "0425",
          "0426",
          "0427",
          "0428",
          "0429",
          "0430",
          "0432",
          "0434",
          "0436",
          "0437",
          "0438",
          "0439",
          "0441",
          "0501",
          "0502",
          "0511",
          "0512",
          "0513",
          "0514",
          "0515",
          "0516",
          "0517",
          "0519",
          "0520",
          "0521",
          "0522",
          "0528",
          "0529",
          "0532",
          "0533",
          "0534",
          "0536",
          "0538",
          "0540",
          "0541",
          "0542",
          "0543",
          "0544",
          "0545",
          "0602",
          "0604",
          "0605",
          "0612",
          "0615",
          "0616",
          "0617",
          "0618",
          "0619",
          "0620",
          "0621",
          "0622",
          "0623",
          "0624",
          "0625",
          "0626",
          "0627",
          "0628",
          "0631",
          "0632",
          "0633",
          "0701",
          "0702",
          "0704",
          "0706",
          "0709",
          "0710",
          "0711",
          "0713",
          "0714",
          "0716",
          "0718",
          "0719",
          "0720",
          "0722",
          "0723",
          "0728",
          "0805",
          "0806",
          "0807",
          "0811",
          "0814",
          "0815",
          "0817",
          "0819",
          "0821",
          "0822",
          "0826",
          "0827",
          "0828",
          "0829",
          "0830",
          "0831",
          "0833",
          "0834",
          "0901",
          "0904",
          "0906",
          "0911",
          "0912",
          "0914",
          "0919",
          "0926",
          "0928",
          "0929",
          "0935",
          "0937",
          "0938",
          "0940",
          "0941",
          "1001",
          "1002",
          "1003",
          "1004",
          "1014",
          "1017",
          "1018",
          "1021",
          "1026",
          "1027",
          "1029",
          "1032",
          "1034",
          "1037",
          "1046",
          "1101",
          "1102",
          "1103",
          "1106",
          "1111",
          "1112",
          "1114",
          "1119",
          "1120",
          "1121",
          "1122",
          "1124",
          "1127",
          "1129",
          "1130",
          "1133",
          "1134",
          "1135",
          "1141",
          "1142",
          "1144",
          "1145",
          "1146",
          "1149",
          "1151",
          "1154",
          "1159",
          "1160",
          "1201",
          "1211",
          "1214",
          "1216",
          "1219",
          "1221",
          "1222",
          "1223",
          "1224",
          "1227",
          "1228",
          "1231",
          "1232",
          "1233",
          "1234",
          "1235",
          "1238",
          "1241",
          "1242",
          "1243",
          "1244",
          "1245",
          "1246",
          "1247",
          "1251",
          "1252",
          "1253",
          "1256",
          "1259",
          "1260",
          "1263",
          "1264",
          "1265",
          "1266",
          "1401",
          "1411",
          "1412",
          "1413",
          "1416",
          "1417",
          "1418",
          "1419",
          "1420",
          "1421",
          "1422",
          "1424",
          "1426",
          "1428",
          "1429",
          "1430",
          "1431",
          "1432",
          "1433",
          "1438",
          "1439",
          "1441",
          "1443",
          "1444",
          "1445",
          "1449",
          "1502",
          "1503",
          "1504",
          "1505",
          "1511",
          "1514",
          "1515",
          "1516",
          "1517",
          "1519",
          "1520",
          "1523",
          "1524",
          "1525",
          "1526",
          "1528",
          "1529",
          "1531",
          "1532",
          "1534",
          "1535",
          "1539",
          "1543",
          "1545",
          "1546",
          "1547",
          "1548",
          "1551",
          "1554",
          "1556",
          "1557",
          "1560",
          "1563",
          "1566",
          "1567",
          "1569",
          "1571",
          "1572",
          "1573",
          "1576",
          "1601",
          "1612",
          "1613",
          "1617",
          "1620",
          "1621",
          "1622",
          "1624",
          "1627",
          "1630",
          "1632",
          "1633",
          "1634",
          "1635",
          "1636",
          "1638",
          "1640",
          "1644",
          "1648",
          "1653",
          "1657",
          "1662",
          "1663",
          "1664",
          "1665",
          "1702",
          "1703",
          "1711",
          "1714",
          "1717",
          "1718",
          "1719",
          "1721",
          "1723",
          "1724",
          "1725",
          "1729",
          "1736",
          "1738",
          "1739",
          "1740",
          "1742",
          "1743",
          "1744",
          "1748",
          "1749",
          "1750",
          "1751",
          "1755",
          "1756",
          "1804",
          "1805",
          "1811",
          "1812",
          "1813",
          "1815",
          "1816",
          "1818",
          "1820",
          "1822",
          "1824",
          "1825",
          "1826",
          "1827",
          "1828",
          "1832",
          "1833",
          "1834",
          "1835",
          "1836",
          "1837",
          "1838",
          "1839",
          "1840",
          "1841",
          "1842",
          "1845",
          "1848",
          "1849",
          "1850",
          "1851",
          "1852",
          "1853",
          "1854",
          "1856",
          "1857",
          "1859",
          "1860",
          "1865",
          "1866",
          "1867",
          "1868",
          "1870",
          "1871",
          "1874",
          "1901",
          "1902",
          "1903",
          "1911",
          "1913",
          "1915",
          "1917",
          "1919",
          "1920",
          "1922",
          "1923",
          "1924",
          "1925",
          "1926",
          "1927",
          "1928",
          "1929",
          "1931",
          "1933",
          "1936",
          "1938",
          "1939",
          "1940",
          "1941",
          "1942",
          "1943",
          "2002",
          "2003",
          "2004",
          "2011",
          "2012",
          "2014",
          "2015",
          "2017",
          "2018",
          "2019",
          "2020",
          "2021",
          "2022",
          "2023",
          "2024",
          "2025",
          "2027",
          "2028",
          "2030"
        ]
      }
    },
    {
      "code": "ContentsCode",
      "selection": {
        "filter": "item",
        "values": [
          "CRC2555627687",
          "CRC3646426417",
          "CRC2753977501",
          "CRC4036937690",
          "CRC2852338345",
          "CRC707262887",
          "CRC2803732466",
          "CRC870664922",
          "CRC1503178642",
          "CRC4015808924"
        ]
      }
    },
    {
      "code": "Tid",
      "selection": {
        "filter": "item",
        "values": [
          "2004",
          "2005",
          "2006",
          "2007",
          "2008",
          "2009",
          "2010",
          "2011",
          "2012",
          "2013",
          "2014",
          "2015",
          "2016"
        ]
      }
    }
  ],
  "response": {
    "format": "json-stat2"
  }
}'

## Data

temp <- POST(url , body = call, encode = "json", verbose())

data <- fromJSONstat(content(temp, "text"), naming = "id")

## Labels

datalabel <- fromJSONstat(content(temp, "text"), naming = "label")

## Merging labels and variable names

#Renaming Tid to year

if ("year" %in% names(datalabel) & "Tid" %in% names(data)){

    datalabel <- rename(datalabel, Tid = year)
    } else{
        stop("Variable names have changed. Stop!")
            }

merge <- function(df1, df2) {
    if(identical(df1$value, df2$value) == TRUE){
        print("the value vectors are identical")
        print("Proceed to merge...")
        df1 <- mutate(df1, index=row_number())
        df2 <- mutate(df2, index=row_number())
        data3 <<- full_join(df1, df2, by = c("value", "index", "Tid"))
    }
    else {print("value vectors not identical, do not merge")}
    
}

# Mergeing the data sets using the merging function defined above

merge(data, datalabel)

data <- select(data3, -index)

# Checking that everything is there

if(sum(c("Region", "Tid", "statistikkvariabel") %in% names(data)) != 3){
  stop("Some of the variables needed for documentation is not present!")
}

# Documentation

## Creating a variable codebook

### Labels

var_labels_orig <- unique(data$statistikkvariabel)

# I have checked that these numbers are almost identical as
# Oslo municipalities budget. There are only small deviations
# due to averages over city districs. However, I am 99.9 percent
# sure that these measure user charges in practical home based care.
# For example, check out Dok 3 – Oslo kommunes vedtatte budsjett 2016-2019
# here: https://www.oslo.kommune.no/politikk-og-administrasjon/politikk/budsjett-regnskap-og-rapportering/tidligere-ars-budsjetter-og-regnskap/budsjett-og-regnskap-2016/bystyrets-budsjettvedtak-2016/
# On page 132 you will see the numbers for 2016.


var_labels <- paste("practical home based care", var_labels_orig, sep = ", ")

### Varnames

var_names <- c("price_phbc_inc_2G", 
               "price_phbc_inc_2_3G",
               "price_phbc_inc_3_4G",
               "price_phbc_inc_4_5G",
               "price_phbc_inc_5G",
               "max_price_phbc_inc_2G", 
               "max_price_phbc_inc_2_3G",
               "max_price_phbc_inc_3_4G",
               "max_price_phbc_inc_4_5G",
               "max_price_phbc_inc_5G")

### Variable_units

value_label <- rep("Norwegian kroner (NOK)", length(var_names))

### Time period

time <- sort(as.numeric(unique(data$Tid)))

time_period <- rep("2004 - 2016", length(var_names))

### Measured_at

measured_at <- rep("1.1. yearly", length(var_names))


### Source

source <- rep("ssb.no/en/statbank/table/04898", length(var_names))

### codebook

codebook <- as.data.frame(cbind(var_names, var_labels, value_label, time_period, measured_at, source))

write_csv(codebook, 
       path = paste(documentation.dir, "3_1_cb_user_fees_practical_help_ltc_t04898.csv", sep = "/"))

# Tidy the data

## First checking that the names are still in there in case the SSBs api is updated

data <- as.data.table(data)

data <- dcast(data, Region + Tid ~ statistikkvariabel)

setnames(data, var_labels_orig, var_names)

setnames(data, c("Region", "Tid"), c("knr", "year"))


# Save the data

write_csv(data, path = paste(datadir, "3_user_fees", 
                             "3_1_user_fees_practical_help_ltc_t04898.csv", sep = "/"))




