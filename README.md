# Commercial Rental Agreement Template for India

**A free, simplified rental agreement template for startups and small businesses**

[![License: CC0-1.0](https://img.shields.io/badge/License-CC0%201.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
[![Made for Startups](https://img.shields.io/badge/Made%20for-Startups-blue.svg)]()

A simple, legally adequate commercial rental agreement template for Indian startups renting modest office spaces. Designed for buddy businesses and small teams without legal departments.

## 🎯 Who Is This For?

This template is designed for:

- ✅ **Startups** renting office space with rent ≤ ₹20,000/month
- ✅ **Individual landlords** renting to buddy startups or known contacts
- ✅ **Small businesses** without dedicated legal teams
- ✅ **Co-working sublease agreements** between startups
- ✅ **Freelancers** and **small teams** needing simple office space

## ⚠️ Who Is This NOT For?

This template is **NOT suitable** for:

- ❌ Large commercial complexes or corporate office buildings
- ❌ High-value leases (>₹20,000/month)
- ❌ Multi-year lease agreements requiring extensive legal review
- ❌ Corporate tenancies with dedicated legal teams
- ❌ Complex commercial arrangements with multiple parties

> **If your rent exceeds ₹20,000/month or you're dealing with complex commercial terms, please consult a lawyer for a comprehensive agreement.**

## ✨ Key Features

- **11-month tenure** - Avoids mandatory registration requirement in most states
- **No landlord PAN required** - Privacy-friendly for individual landlords
- **Simplified GST/TDS clauses** - Optional notes instead of complex requirements
- **Startup-friendly termination** - 30-60 days notice period
- **No complex legal jargon** - Easy to understand and customize
- **Multiple output formats** - HTML, DOCX, and PDF
- **Public domain** - CC0-1.0 license, free to use and modify

## 🚀 Quick Start

### 1. Get the Template

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/rental-agreement-template.git
cd rental-agreement-template

# Or download as ZIP from GitHub
```

### 2. Install Prerequisites

**Pandoc** (required for document generation):

```bash
# Ubuntu/Debian
sudo apt-get install pandoc

# macOS
brew install pandoc

# Windows
# Download from https://pandoc.org/installing.html
```

**wkhtmltopdf** (optional, for PDF generation):

```bash
# Ubuntu/Debian
sudo apt-get install wkhtmltopdf

# macOS
brew install wkhtmltopdf
```

### 3. Customize the Template

Edit `src/template.md` in any text editor (even Notepad!) and replace the placeholders:

```markdown
__LANDLORD_NAME__ → Rajesh Kumar
__TENANT_NAME__ → Priya Sharma
__MONTHLY_RENT__ → ₹15,000
__PROPERTY_ADDRESS__ → Shop No. 5, MG Road, Bangalore
... and so on
```

See [docs/customization-guide.md](docs/customization-guide.md) for a complete list of placeholders.

### 4. Build Your Agreement

```bash
# Build all formats (HTML, DOCX, PDF)
make build

# Or build specific format
make build-html    # HTML only
make build-docx    # Word document only
make build-pdf     # PDF only
```

### 5. Get Your Documents

Find your generated agreements in the `build/` directory:

- `build/template.html` - For preview and online sharing
- `build/template.docx` - For printing and signing (recommended)
- `build/template.pdf` - For distribution and archival

## 📝 Customization Guide

### Required Placeholders

These must be replaced in `src/template.md`:

| Placeholder | Example | Description |
|-------------|---------|-------------|
| `__AGREEMENT_DATE__` | 15 January 2026 | Date when agreement is signed |
| `__CITY__` | Bangalore | City where agreement is executed |
| `__LANDLORD_NAME__` | Rajesh Kumar | Full legal name of landlord |
| `__LANDLORD_ADDRESS__` | 123, MG Road, Bangalore - 560001 | Complete address |
| `__LANDLORD_PHONE__` | +91-9876543210 | Contact number |
| `__TENANT_NAME__` | Priya Sharma | Full legal name of tenant |
| `__TENANT_ADDRESS__` | 456, Brigade Road, Bangalore - 560025 | Complete address |
| `__TENANT_PHONE__` | +91-9123456789 | Contact number |
| `__PROPERTY_ADDRESS__` | Shop No. 5, First Floor, MG Road, Bangalore - 560001 | Property being rented |
| `__MONTHLY_RENT__` | ₹15,000 | Monthly rent amount (max ₹20,000) |
| `__SECURITY_DEPOSIT__` | ₹45,000 | Security deposit (typically 2-3x rent) |
| `__RENT_DUE_DATE__` | 5th | Day of month when rent is due |
| `__LEASE_START_DATE__` | 1 February 2026 | Lease start date |
| `__LEASE_END_DATE__` | 31 December 2026 | Lease end date (11 months later) |
| `__NOTICE_PERIOD__` | 60 | Notice period in days (30-60 typical) |
| `__BUSINESS_PURPOSE__` | Software development and IT services | Type of business |

### Optional Placeholders

| Placeholder | Example | Notes |
|-------------|---------|-------|
| `__TENANT_BUSINESS_NAME__` | Tech Innovations Pvt Ltd | If tenant is a company |
| `__PROPERTY_FLOOR__` | First Floor | If applicable |
| `__PROPERTY_AREA_SQFT__` | 500 | Approximate area |

For a detailed guide, see [docs/customization-guide.md](docs/customization-guide.md).

## 📚 Understanding the 11-Month Agreement

### Why 11 Months?

In India, rental agreements **exceeding 11 months** must be registered with the Sub-Registrar office under the Registration Act, 1908. This involves:
- Additional registration fees
- Time-consuming paperwork
- Physical presence at Sub-Registrar office
- Higher stamp duty in some states

**By keeping the agreement to 11 months:**
- ✅ No mandatory registration required (in most states)
- ✅ Lower stamp duty (typically 0.25% to 2% of total rent)
- ✅ Simpler execution process
- ✅ Faster turnaround

### Can I Renew After 11 Months?

Yes! After 11 months, you can:
- Create a new 11-month agreement
- Convert to a registered long-term lease
- Continue on month-to-month basis (check local laws)

## 💰 GST and TDS Simplified

### GST (Goods and Services Tax)

**What the law says:** GST at 18% is applicable on commercial rent.

**Reality for small rentals:**
- If your landlord is **not GST-registered** (most individual landlords aren't), no GST is charged
- If your landlord **is GST-registered**, they'll charge GST and issue invoices
- The template includes optional notes for both scenarios

### TDS (Tax Deducted at Source)

**What the law says:** If annual rent exceeds ₹2,40,000, tenant must deduct 10% TDS.

**At ₹20,000/month:**
- Annual rent = ₹2,40,000 (exactly at threshold)
- TDS may be applicable
- The template includes notes about this

**Below ₹20,000/month:**
- Likely no TDS requirement
- Consult a CA if unsure

> **Note:** Landlord PAN is not required for this agreement, but may be needed for TDS compliance if applicable.

## 📄 Stamp Duty by State

Stamp duty rates vary by state for 11-month agreements:

| State | Approximate Rate | Notes |
|-------|-----------------|-------|
| Karnataka | 1% of annual rent | Bangalore |
| Maharashtra | 0.25% of annual rent | Mumbai, Pune |
| Delhi | Fixed ₹100 per year of rent | NCR |
| Tamil Nadu | 1% of annual rent | Chennai |
| Telangana | 1% of annual rent | Hyderabad |
| West Bengal | Fixed ₹200 | Kolkata |
| Gujarat | 0.25% of annual rent | Ahmedabad |
| Uttar Pradesh | 2-4% of annual rent | Noida, Ghaziabad |

> **Always verify current rates with your state's revenue department or a local lawyer.**

## 🛡️ Legal Disclaimers

> **⚠️ IMPORTANT: This template is for SMALL startups and buddy businesses only.**

> **This template is provided for informational purposes only and does NOT constitute legal advice.**

**We strongly recommend:**
- ✅ Reviewing this agreement with a qualified lawyer if you have specific concerns
- ✅ Verifying state-specific stamp duty rates and requirements
- ✅ Ensuring compliance with local municipal laws and regulations
- ✅ Understanding your GST and TDS obligations based on your specific situation
- ✅ Paying applicable stamp duty as per your state laws
- ✅ Registering the agreement if required by your state (though 11-month agreements typically don't require it)

**This template provides basic legal protections suitable for simple commercial rentals. For complex situations, high-value leases, or if you're unsure, consult a lawyer.**

## 🤝 Contributing

Contributions are welcome! Please help improve this template by:

- 🐛 Reporting issues or errors
- 💡 Suggesting additional clauses or improvements
- 📝 Improving documentation
- 🌐 Adding translations to regional languages
- ⚖️ Updating legal information

Please submit pull requests or open issues on GitHub.

## 📜 License

This template is released under **CC0-1.0 (Public Domain Dedication)**.

**This means:**
- ✅ You can use it for any purpose (personal or commercial)
- ✅ You can modify it without restriction
- ✅ You can distribute it freely
- ✅ No attribution required (though appreciated!)

See [LICENSE](LICENSE) for full details.

## 🙏 Acknowledgments

- Inspired by [nilenso/cooperative-agreement](https://github.com/nilenso/cooperative-agreement)
- Built with [Pandoc](https://pandoc.org/) - Universal document converter
- Legal framework based on:
  - Model Tenancy Act 2026
  - Indian Contract Act 1872
  - Transfer of Property Act 1882
  - Registration Act 1908

## 📞 Support

- 📖 Full documentation: [docs/customization-guide.md](docs/customization-guide.md)
- 🐛 Report issues: [GitHub Issues](https://github.com/YOUR_USERNAME/rental-agreement-template/issues)
- 💬 Questions: Open a discussion on GitHub

## 🔗 Resources

- [Model Tenancy Act (MoHUA)](https://mohua.gov.in/)
- [Indian Contract Act, 1872](https://legislative.gov.in/)
- [Registration Act, 1908](https://legislative.gov.in/)
- [Income Tax TDS Rules](https://www.incometax.gov.in/)
- [GST Information](https://www.gst.gov.in/)

---

**Made with ❤️ for the Indian startup community**

*Helping buddy startups get back to building, not paperwork.*
