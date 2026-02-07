# Customization Guide

**Complete reference for all placeholder variables in the rental agreement template**

This guide explains every placeholder variable in `src/template.md`, provides examples, and offers tips for customization.

## 📋 Table of Contents

1. [Agreement Information](#agreement-information)
2. [Landlord Information](#landlord-information)
3. [Tenant Information](#tenant-information)
4. [Property Details](#property-details)
5. [Financial Terms](#financial-terms)
6. [Duration and Dates](#duration-and-dates)
7. [Business Information](#business-information)
8. [Optional Fields](#optional-fields)

---

## Agreement Information

### `__AGREEMENT_DATE__`

**Description:** The date when the agreement is signed by both parties.

**Format:** Full date with month name

**Examples:**
- `15 January 2026`
- `1 February 2026`
- `23 March 2026`

**Tips:**
- Use the actual signing date
- Ensure both parties sign on the same date
- Format: DD Month YYYY

---

### `__CITY__`

**Description:** City where the agreement is executed and property is located.

**Format:** City name

**Examples:**
- `Bangalore`
- `Mumbai`
- `Delhi`
- `Pune`
- `Hyderabad`

**Tips:**
- This determines legal jurisdiction
- Use the city where the property is located
- Important for dispute resolution

---

## Landlord Information

### `__LANDLORD_NAME__`

**Description:** Full legal name of the landlord (property owner).

**Format:** Full name as per government ID

**Examples:**
- `Rajesh Kumar`
- `Priya Sharma`
- `Amit Patel`

**Tips:**
- Use full name from Aadhaar/PAN card
- Include middle name if applicable
- For companies: Use registered company name

---

### `__LANDLORD_ADDRESS__`

**Description:** Complete residential or business address of the landlord.

**Format:** Full address with pin code

**Examples:**
- `123, MG Road, Koramangala, Bangalore - 560001`
- `Flat 5B, Laxmi Apartments, Bandra West, Mumbai - 400050`
- `Plot 45, Sector 18, Noida, Uttar Pradesh - 201301`

**Tips:**
- Include house/flat number, street, area, city, state, pin code
- Use complete address for notices and communication
- Verify accuracy

---

### `__LANDLORD_PHONE__`

**Description:** Contact phone number of the landlord.

**Format:** Mobile number with country code (optional)

**Examples:**
- `+91-9876543210`
- `9876543210`
- `080-12345678` (if landline)

**Tips:**
- Use active phone number
- Include country code for international compatibility
- Verify number is correct

---

## Tenant Information

### `__TENANT_NAME__`

**Description:** Full legal name of the tenant (person or company renting).

**Format:** Full name as per government ID

**Examples:**
- `Priya Sharma`
- `Vikram Malhotra`
- `Anjali Singh`

**Tips:**
- For individuals: Use name from Aadhaar/PAN
- For companies: Use registered company name
- If multiple tenants, list all names

---

### `__TENANT_BUSINESS_NAME__`

**Description:** Business or company name (if tenant is a company/firm).

**Format:** Registered business name

**Examples:**
- `Tech Innovations Private Limited`
- `Sharma Consulting LLP`
- `Digital Marketing Services`
- `Not Applicable` (if individual)

**Tips:**
- Use registered business name
- Include entity type (Pvt Ltd, LLP, etc.)
- If individual/freelancer, write "Not Applicable"
- **This field is optional** - remove line if not applicable

---

### `__TENANT_ADDRESS__`

**Description:** Complete residential or business address of the tenant.

**Format:** Full address with pin code

**Examples:**
- `456, Brigade Road, MG Road Area, Bangalore - 560025`
- `301, Sunrise Towers, Banjara Hills, Hyderabad - 500034`

**Tips:**
- Can be current residence or registered office
- Include complete address for legal notices
- Verify accuracy

---

### `__TENANT_PHONE__`

**Description:** Contact phone number of the tenant.

**Format:** Mobile number with country code (optional)

**Examples:**
- `+91-9123456789`
- `9123456789`

**Tips:**
- Use active business/personal number
- Ensure landlord can reach you
- Verify number is correct

---

## Property Details

### `__PROPERTY_ADDRESS__`

**Description:** Complete address of the property being rented.

**Format:** Full property address with specifics

**Examples:**
- `Shop No. 5, First Floor, MG Road, Bangalore - 560001`
- `Office Unit 301, Tower B, Tech Park, Sector 62, Noida - 201301`
- `Commercial Space, Ground Floor, 123 Brigade Road, Bangalore - 560025`

**Tips:**
- Include shop/unit number, floor, building name
- Specify street, area, city, pin code
- Be as specific as possible
- Match property documents

---

### `__PROPERTY_FLOOR__`

**Description:** Floor number where the property is located.

**Format:** Floor level

**Examples:**
- `Ground Floor`
- `First Floor`
- `Second Floor`
- `Basement`
- `Mezzanine Floor`

**Tips:**
- **This field is optional**
- Use if property is in multi-story building
- Remove line if not applicable

---

### `__PROPERTY_AREA_SQFT__`

**Description:** Approximate area of the property in square feet.

**Format:** Number with unit

**Examples:**
- `500`
- `750`
- `1000`
- `1200`

**Tips:**
- **This field is optional**
- Use carpet area (usable area)
- Can also use square meters
- Remove line if not applicable

---

## Financial Terms

### `__MONTHLY_RENT__`

**Description:** Monthly rent amount to be paid by tenant.

**Format:** Amount in rupees

**Examples:**
- `₹10,000`
- `₹15,000`
- `₹20,000`

**Tips:**
- **Maximum recommended: ₹20,000** for this template
- Use Indian Rupee symbol (₹) or write "Rupees"
- Specify if inclusive/exclusive of GST (if applicable)
- Should be same amount throughout agreement period

---

### `__SECURITY_DEPOSIT__`

**Description:** Refundable security deposit amount.

**Format:** Amount in rupees

**Examples:**
- `₹30,000` (for ₹10,000 rent - 3 months)
- `₹45,000` (for ₹15,000 rent - 3 months)
- `₹60,000` (for ₹20,000 rent - 3 months)

**Tips:**
- Typically 2-3 times monthly rent
- 3 months is standard for commercial properties
- Refundable at end of lease (minus deductions)
- Should be paid at time of signing

---

### `__RENT_DUE_DATE__`

**Description:** Day of the month when rent is due.

**Format:** Day number or ordinal

**Examples:**
- `5th`
- `1st`
- `10th`
- `15th`

**Tips:**
- Choose a date convenient for both parties
- Common: 1st, 5th, or 10th of month
- Should align with tenant's cash flow
- Specify single day, not range

---

## Duration and Dates

### `__LEASE_START_DATE__`

**Description:** Date when the tenancy officially begins.

**Format:** Full date with month name

**Examples:**
- `1 February 2026`
- `15 March 2026`
- `1 April 2026`

**Tips:**
- Can be same as or after Agreement Date
- Usually 1st of month
- First rent typically due on this date
- Ensure property is ready for occupation

---

### `__LEASE_END_DATE__`

**Description:** Date when the tenancy officially ends (11 months later).

**Format:** Full date with month name

**Examples:**
- `31 December 2026` (if start is 1 Feb 2026)
- `14 February 2027` (if start is 15 Mar 2026)

**Tips:**
- **Must be exactly 11 months from start date**
- To avoid registration requirement
- Count carefully: 11 months, not 1 year
- Example: 1 Feb 2026 → 31 Dec 2026 (11 months)

**Calculation Help:**
```
Start: 1 January 2026
End:   30 November 2026 (11 months later)

Start: 15 February 2026
End:   14 January 2027 (11 months later)
```

---

### `__NOTICE_PERIOD__`

**Description:** Number of days notice required to terminate the agreement.

**Format:** Number of days

**Examples:**
- `30`
- `60`
- `90`

**Tips:**
- **Recommended: 30-60 days** for startup flexibility
- 60 days is most common
- Same notice period for both landlord and tenant
- Count as calendar days

---

## Business Information

### `__BUSINESS_PURPOSE__`

**Description:** Type of business to be conducted at the property.

**Format:** Brief description of business activity

**Examples:**
- `Software development and IT services`
- `Digital marketing agency`
- `Consulting services`
- `E-commerce operations and warehousing`
- `Design and creative services`
- `Co-working space operations`
- `Retail sales of electronics`

**Tips:**
- Be specific but not overly restrictive
- Broad enough to cover related activities
- Should be legal and permitted use
- Avoid very narrow descriptions

---

## Optional Fields

These fields can be left as-is, removed, or customized:

### Witnesses (Optional but Recommended)

The agreement includes space for 2 witnesses. While optional, witnesses:
- Add legal validity
- Provide evidence of signing
- Are helpful in case of disputes

**Leave blank** if you don't have witnesses, or fill in:
- Witness names
- Witness addresses
- Witness signatures and dates

### Additional Terms

Section 14 in the template is for any additional terms you want to add:
- Special parking arrangements
- Specific restrictions
- Additional amenities included
- Custom clauses

**Leave blank** if not needed, or add your specific terms.

---

## Quick Reference Table

| Placeholder | Required? | Example Value |
|-------------|-----------|---------------|
| `__AGREEMENT_DATE__` | ✅ Yes | 15 January 2026 |
| `__CITY__` | ✅ Yes | Bangalore |
| `__LANDLORD_NAME__` | ✅ Yes | Rajesh Kumar |
| `__LANDLORD_ADDRESS__` | ✅ Yes | 123, MG Road, Bangalore - 560001 |
| `__LANDLORD_PHONE__` | ✅ Yes | +91-9876543210 |
| `__TENANT_NAME__` | ✅ Yes | Priya Sharma |
| `__TENANT_BUSINESS_NAME__` | ⚪ Optional | Tech Innovations Pvt Ltd |
| `__TENANT_ADDRESS__` | ✅ Yes | 456, Brigade Road, Bangalore - 560025 |
| `__TENANT_PHONE__` | ✅ Yes | +91-9123456789 |
| `__PROPERTY_ADDRESS__` | ✅ Yes | Shop No. 5, MG Road, Bangalore - 560001 |
| `__PROPERTY_FLOOR__` | ⚪ Optional | First Floor |
| `__PROPERTY_AREA_SQFT__` | ⚪ Optional | 500 |
| `__MONTHLY_RENT__` | ✅ Yes | ₹15,000 |
| `__SECURITY_DEPOSIT__` | ✅ Yes | ₹45,000 |
| `__RENT_DUE_DATE__` | ✅ Yes | 5th |
| `__LEASE_START_DATE__` | ✅ Yes | 1 February 2026 |
| `__LEASE_END_DATE__` | ✅ Yes | 31 December 2026 |
| `__NOTICE_PERIOD__` | ✅ Yes | 60 |
| `__BUSINESS_PURPOSE__` | ✅ Yes | Software development |

---

## Tips for Customization

### 1. Use Find and Replace

Most text editors support find-and-replace:
- Find: `__LANDLORD_NAME__`
- Replace: `Rajesh Kumar`
- Replace all occurrences

### 2. Check for Missed Placeholders

After customization, search for `__` (double underscore) to ensure you didn't miss any placeholders.

### 3. Remove Optional Sections

If you're not using optional fields, delete the entire line:

**Before:**
```markdown
**Business Name:** __TENANT_BUSINESS_NAME__ *(if applicable)*
```

**After** (if not applicable):
```markdown
(Remove entire line)
```

### 4. Verify Dates Carefully

Double-check that:
- Lease period is exactly 11 months
- Dates are formatted consistently
- Start date is on or after agreement date

### 5. Legal Review

Even with this template, consider:
- Reviewing with a lawyer if rent > ₹20,000/month
- Verifying state-specific requirements
- Ensuring compliance with local laws

---

## Common Mistakes to Avoid

❌ **Don't:**
- Leave placeholders unfilled
- Exceed 11-month period (triggers registration)
- Use incorrect date formats
- Forget to specify city (affects jurisdiction)
- Miss calculating security deposit correctly

✅ **Do:**
- Fill all required placeholders
- Verify all information is accurate
- Keep lease to exactly 11 months
- Use consistent date formats
- Calculate dates carefully

---

## Need Help?

- 📖 See main [README.md](../README.md) for general information
- 🐛 Report issues on [GitHub](https://github.com/YOUR_USERNAME/rental-agreement-template/issues)
- 💬 Ask questions in GitHub Discussions

---

**Happy customizing!** 🎉
