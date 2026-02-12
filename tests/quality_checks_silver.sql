/*
==========================================================================================================
Quality Checks
==========================================================================================================
Script Purpose:
   This script performs various qualty checks for data consistency, accurarcy,
   and standardization across the 'silver' schemas. It includes checks for: 
   - Null or duplicate primary keys.
   - Unwanted spaces in string fields.
   - Data standardization and consistency.
   - Invalid date ranges and orders.
   - Data consistency between related fields.

Usage Notes:
  - Run these checks after data loading Silver Layer.
  - Investigate and resolve any discrepancies found during the checks.
==========================================================================================================
*/


-- =======================================================================================================
-- Checking 'silver.crm_cust_info'
-- =======================================================================================================
-- Check for NULLs or Duplicates in Primary KEy
-- Expectation: No Results
SELECT 
   cst_id,
   COUNT(*)
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*)>1 OR csd_id IS NULL;

