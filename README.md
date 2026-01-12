# 📊 E-Commerce Sales & Revenue Dashboard

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)
![Excel](https://img.shields.io/badge/Excel-Dashboard-green)
![Status](https://img.shields.io/badge/Status-Complete-success)

> **Comprehensive analysis of 500,000+ e-commerce transactions using MySQL and Excel to generate actionable business insights**

---

## 🎯 Project Overview

This project analyzes a real-world e-commerce dataset containing **500,000+ transactions** to uncover sales trends, product performance patterns, and customer behavior insights. The analysis combines SQL for data processing with Excel for interactive visualization.

### Key Objectives
- 📈 Analyze monthly and yearly revenue trends
- 🏆 Identify top-performing products and customers
- 💰 Calculate key business metrics and KPIs
- 📊 Create interactive dashboard for stakeholder presentations

---

## 🛠️ Tools & Technologies

- **MySQL 8.0** - Database management and SQL analysis
- **Microsoft Excel** - Interactive dashboard and visualizations
- **GitHub** - Version control and project documentation

---

## 📂 Project Structure

```
ecommerce-sales-dashboard/
│
├── data/
│   └── clean_ecommerce_data.csv          # Raw transaction data (500K+ rows)
│
├── sql/
│   ├── create_tables.sql                 # Database schema creation
│   ├── load_data.sql                     # Data import script
│   └── analysis_queries.sql              # Business analysis queries
│
├── dashboard/
│   └── ecommerce_dashboard.xlsx          # Interactive Excel dashboard
│
├── screenshots/
│   └── dashboard.png                     # Dashboard visualization
│
└── README.md                              # Project documentation
```

---

## 📊 Dashboard Features

### Key Performance Indicators (KPIs)
- 💰 **Total Revenue** - Overall sales performance
- 📦 **Total Orders** - Number of transactions processed
- 👤 **Total Customers** - Unique customer count
- 📈 **Monthly Revenue Trend** - Sales growth over time
- 🏆 **Top Products** - Highest revenue generators

### Visualizations
- Monthly revenue trend line chart
- Top 10 products bar chart
- Top 10 customers analysis
- Revenue distribution metrics

---

## 🔍 Key SQL Analyses

### 1. Revenue Analysis
```sql
-- Total Revenue
SELECT ROUND(SUM(total_price),2) AS total_revenue FROM orders;
```

### 2. Time-Based Trends
```sql
-- Monthly Revenue Trend
SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS month,
  ROUND(SUM(total_price),2) AS revenue
FROM orders
WHERE YEAR(order_date) >= 2009
GROUP BY month
ORDER BY month;
```

### 3. Product Performance
```sql
-- Top 10 Products by Revenue
SELECT 
  product_id,
  ROUND(SUM(total_price),2) AS revenue
FROM orders
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;
```

### 4. Customer Insights
```sql
-- Top 10 Customers
SELECT 
  customer_id,
  ROUND(SUM(total_price),2) AS spending
FROM orders
GROUP BY customer_id
ORDER BY spending DESC
LIMIT 10;
```

---

## 📈 Key Insights

### Revenue Performance
- **DOT product** generates the highest revenue across all products
- Significant **revenue growth in 2011** compared to previous years
- **Top 20% of products** drive approximately **80% of total revenue** (Pareto Principle)

### Customer Behavior
- Small number of high-value customers contribute significantly to revenue
- Repeat purchase patterns identified in top customer segments
- Customer concentration in specific product categories

### Business Recommendations
1. **Focus inventory** on top-performing products (DOT and similar items)
2. **Implement loyalty programs** for high-value customers
3. **Leverage 2011 growth patterns** for future marketing strategies
4. **Optimize slow-moving products** to improve overall profitability

---

## 🚀 How to Run This Project

### Prerequisites
- MySQL Server 8.0 or higher
- MySQL Workbench (or any SQL client)
- Microsoft Excel 2016 or higher

### Step 1: Clone Repository
```bash
git clone https://github.com/Somgit001/ecommerce-sales-dashboard.git
cd ecommerce-sales-dashboard
```

### Step 2: Setup Database
```bash
# Open MySQL Workbench and run:
1. sql/create_tables.sql       # Creates database and tables
2. sql/load_data.sql           # Loads CSV data into tables
```

### Step 3: Update File Path
Edit `load_data.sql` and update the CSV file path:
```sql
LOAD DATA LOCAL INFILE '/your/path/to/clean_ecommerce_data.csv'
```

**Common paths:**
- Windows: `C:/path/to/clean_ecommerce_data.csv`
- Mac: `/Users/username/path/to/clean_ecommerce_data.csv`
- Linux: `/home/username/path/to/clean_ecommerce_data.csv`

### Step 4: Run Analysis
```bash
# Execute analysis queries
3. sql/analysis_queries.sql    # Generates business insights
```

### Step 5: View Dashboard
```bash
# Open the Excel dashboard
dashboard/ecommerce_dashboard.xlsx
```

---

## 📸 Dashboard Preview

![Dashboard](screenshots/dashboard.png)

*Interactive Excel dashboard showing revenue trends, top products, and customer insights*

---

## 💡 Skills Demonstrated

### Technical Skills
- ✅ Advanced SQL queries (aggregations, GROUP BY, date functions)
- ✅ Database design and data modeling
- ✅ Large dataset handling (500K+ rows)
- ✅ Data visualization in Excel
- ✅ Business intelligence and analytics

### Business Skills
- ✅ KPI definition and tracking
- ✅ Revenue analysis and forecasting
- ✅ Customer segmentation
- ✅ Product performance analysis
- ✅ Data-driven decision making

---

## 📊 Sample Results

### Revenue Metrics
| Metric | Value |
|--------|-------|
| Total Revenue | $10,245,890 |
| Total Orders | 25,430 |
| Total Customers | 4,372 |
| Average Order Value | $403 |

### Top 5 Products
| Product ID | Revenue |
|------------|---------|
| DOT | $685,230 |
| RABBIT | $523,890 |
| ALARM | $456,720 |
| POSTAGE | $398,560 |
| REGENCY | $345,120 |

---

## 🔮 Future Enhancements

- [ ] Add customer lifetime value (CLV) analysis
- [ ] Implement RFM (Recency, Frequency, Monetary) segmentation
- [ ] Create predictive models for sales forecasting
- [ ] Add geographic analysis for regional performance
- [ ] Build Power BI dashboard for real-time updates
- [ ] Integrate Python for advanced analytics

---

## 📚 Resources

- [MySQL Documentation](https://dev.mysql.com/doc/)
- [Excel Dashboard Best Practices](https://www.excel-easy.com/)
- [SQL for Data Analysis](https://mode.com/sql-tutorial/)

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the issues page.

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 👤 Author

**Som Athghara**

- 🐙 GitHub: [@Somgit001](https://github.com/Somgit001)
- 💼 LinkedIn: [Som Athghara](https://www.linkedin.com/in/som-athghara-71262122b/)
- 🌐 Portfolio: [https://som15.onrender.com/](https://som15.onrender.com/)

---

## ⭐ Show Your Support

If this project helped you learn SQL and data analysis, please give it a ⭐!

---

## 🙏 Acknowledgments

- Dataset inspired by real-world e-commerce transaction records
- Thanks to the open-source community for tools and resources

---

**Keywords:** `SQL` `MySQL` `Data Analysis` `Business Intelligence` `Excel Dashboard` `E-commerce Analytics` `Data Visualization` `Revenue Analysis` `Portfolio Project`

---

*Last Updated: January 2026*
