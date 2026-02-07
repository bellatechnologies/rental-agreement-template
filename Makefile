# Makefile for Commercial Rental Agreement Template
# For small startups and buddy businesses in India

.PHONY: help build clean build-html build-docx build-pdf

# Default target - show help
help:
	@echo ""
	@echo "Commercial Rental Agreement Template - Build System"
	@echo "===================================================="
	@echo ""
	@echo "Available targets:"
	@echo "  make build       - Build all output formats (HTML, DOCX, PDF)"
	@echo "  make build-html  - Build HTML version only"
	@echo "  make build-docx  - Build DOCX version only"
	@echo "  make build-pdf   - Build PDF version only"
	@echo "  make clean       - Remove all generated files"
	@echo "  make help        - Show this help message"
	@echo ""
	@echo "Prerequisites:"
	@echo "  - pandoc (required for all formats)"
	@echo "    Install: sudo apt-get install pandoc (Ubuntu/Debian)"
	@echo "             brew install pandoc (macOS)"
	@echo ""
	@echo "  - wkhtmltopdf (optional, for PDF generation)"
	@echo "    Install: sudo apt-get install wkhtmltopdf (Ubuntu/Debian)"
	@echo "             brew install wkhtmltopdf (macOS)"
	@echo ""
	@echo "Usage:"
	@echo "  1. Edit src/template.md with your information"
	@echo "  2. Run 'make build' to generate all formats"
	@echo "  3. Find outputs in build/ directory"
	@echo ""

# Build all formats
build: build-html build-docx build-pdf

# Create build directory if it doesn't exist
build/:
	@mkdir -p build

# Build HTML version with CSS styling
build-html: build/
	@echo "Building HTML version..."
	@pandoc src/template.md \
		-c ../src/style.css \
		-s \
		-f markdown+header_attributes \
		-t html \
		--standalone \
		--metadata title="Commercial Rental Agreement" \
		-o build/template.html
	@echo "✓ HTML version created: build/template.html"

# Build DOCX version (Microsoft Word format)
build-docx: build/
	@echo "Building DOCX version..."
	@pandoc src/template.md \
		-s \
		-f markdown \
		-t docx \
		-o build/template.docx
	@echo "✓ DOCX version created: build/template.docx"

# Build PDF version
build-pdf: build/
	@echo "Building PDF version..."
	@command -v wkhtmltopdf >/dev/null 2>&1 && { \
		echo "Using wkhtmltopdf..."; \
		pandoc src/template.md \
			-c ../src/style.css \
			-s \
			-f markdown+header_attributes \
			-t html \
			--standalone \
			-o build/template_temp.html; \
		wkhtmltopdf \
			--enable-local-file-access \
			--page-size A4 \
			--margin-top 20mm \
			--margin-bottom 20mm \
			--margin-left 20mm \
			--margin-right 20mm \
			build/template_temp.html \
			build/template.pdf; \
		rm build/template_temp.html; \
		echo "✓ PDF version created: build/template.pdf"; \
	} || { \
		echo "wkhtmltopdf not found. Trying pandoc PDF generation..."; \
		pandoc src/template.md \
			-s \
			-f markdown \
			-t pdf \
			--pdf-engine=xelatex \
			-V geometry:margin=1in \
			-V documentclass=article \
			-V fontsize=11pt \
			-o build/template.pdf 2>/dev/null && { \
			echo "✓ PDF version created: build/template.pdf"; \
		} || { \
			echo "⚠ PDF generation failed. Install wkhtmltopdf or xelatex."; \
			echo "  Ubuntu/Debian: sudo apt-get install wkhtmltopdf"; \
			echo "  macOS: brew install wkhtmltopdf"; \
		}; \
	}

# Clean all generated files
clean:
	@echo "Cleaning build directory..."
	@rm -rf build/
	@echo "✓ Build directory removed"
