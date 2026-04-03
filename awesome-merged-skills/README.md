# Awesome Merged Skills

Merged skills from `awesome-claude-skills` repository to complement your existing Z.AI tools.

## 📦 What's Included

### 📝 Document Processing
Skills for working with office documents programmatically:

- **PDF Processing** (`document-processing/pdf/`)
  - Fill PDF forms
  - Extract form fields
  - Convert PDF to images
  - Validate bounding boxes
  - Scripts included: Python utilities for PDF manipulation

- **DOCX Processing** (`document-processing/docx/`)
  - OOXML manipulation
  - Document validation
  - Pack/unpack docx files
  - Scripts: Python OOXML tools

- **XLSX Processing** (`document-processing/xlsx/`)
  - Excel recalculation
  - Spreadsheet manipulation
  - Scripts: Python Excel utilities

### 🛠️ Development Tools

- **Skill Creator** (`development-tools/skill-creator/`)
  - Framework for creating new Claude skills
  - Best practices for skill design
  - Progressive disclosure principles
  - When to use: Creating custom skills for specific workflows

- **MCP Builder** (`development-tools/mcp-builder/`)
  - Build Model Context Protocol servers
  - Connect LLMs to external APIs
  - Python (FastMCP) and Node.js (MCP SDK) support
  - When to use: Building API integrations for Claude

- **Webapp Testing** (`development-tools/webapp-testing/`)
  - Playwright-based testing toolkit
  - Test local web applications
  - Screenshot capture
  - Browser log viewing
  - Helper scripts for server management
  - When to use: Testing web apps before deployment

### 🤖 Automation Framework

- **File Organizer** (`automation-framework/file-organizer/`)
  - Intelligent file organization
  - Duplicate file detection
  - Automatic folder structure suggestions
  - Cleanup automation
  - When to use: Organizing messy Downloads folder, project cleanup

### 🔍 Research Assistants

- **Content Research Writer** (`research-assistants/content-research-writer/`)
  - Research and content generation
  - When to use: Writing articles, research reports

- **Lead Research Assistant** (`research-assistants/lead-research-assistant/`)
  - Lead generation and research
  - When to use: Sales prospecting, market research

## 🚀 How to Use

### With Kimi Code CLI

```bash
# Use a skill
@awesome-merged-skills/document-processing/pdf/SKILL.md Fill this PDF form: form.pdf

# Create a new skill
@awesome-merged-skills/development-tools/skill-creator/SKILL.md Create a skill for API testing

# Test a webapp
@awesome-merged-skills/development-tools/webapp-testing/SKILL.md Test my local app at http://localhost:3000

# Organize files
@awesome-merged-skills/automation-framework/file-organizer/SKILL.md Organize my Downloads folder
```

### Skill Structure

Each skill follows this format:
```
skill-name/
├── SKILL.md          # Main skill instructions
├── scripts/          # Helper scripts (optional)
├── references/       # Reference docs (optional)
└── assets/          # Templates/assets (optional)
```

## 📊 Comparison: Existing vs. New

### Your Existing Tools (Z.AI)
- ✅ Bug fixation system
- ✅ Code quality excellence  
- ✅ Testing strategies
- ✅ DevOps deployment
- ✅ Docker/Caddy best practices
- ✅ Debugging/linting tools

### New Skills from Awesome-Claude
- ✅ **Document processing** (PDF, DOCX, XLSX) - NEW
- ✅ **MCP server building** - NEW
- ✅ **Webapp testing with Playwright** - NEW
- ✅ **File organization** - NEW
- ✅ **Research assistants** - NEW
- ✅ **Skill creation framework** - NEW

## 🎯 Best Use Cases

1. **PDF/DOCX/XLSX Processing**: When you need to automate document handling
2. **MCP Builder**: When connecting Claude to external APIs
3. **Webapp Testing**: Before deploying web applications
4. **File Organizer**: Monthly cleanup of project folders
5. **Skill Creator**: When building custom workflows

## 📚 Source

Original repository: https://github.com/ComposioHQ/awesome-claude-skills

## 🔄 Integration

These skills complement your existing Z.AI tools:
- Use **Z.AI tools** for coding, debugging, DevOps
- Use **Awesome-merged skills** for document processing, testing, organization

## 📝 License

See individual skill directories for license information.
