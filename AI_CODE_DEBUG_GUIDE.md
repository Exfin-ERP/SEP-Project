# AI Code Debug & Fix Guide

## Quick Start - How to Debug Code with AI Tools

Nee project lo errors aatey, ChatGPT and GitHub Copilot use cheskundam:

### 1. GitHub Copilot (Recommended - Already Connected)

**Access:**
- Go to: https://github.com/copilot
- Or click "Chat with Copilot" button on GitHub

**How to use:**
1. Click "Add repositories, files, and spaces"
2. Select your SEP-Project repository
3. Ask: "Nee code lo errors fix chey" or "This function has an error, fix it"
4. Copilot will analyze your code and give solutions
5. Click "Apply changes" to implement fixes

**Example questions:**
- "Fix the error in index.html"
- "Why is package.json showing errors?"
- "Optimize the Dockerfile"
- "Debug the deployement.yml file"

---

### 2. ChatGPT (For Complex Issues)

**Access:**
- Go to: https://chatgpt.com
- Sign up or Log in

**How to use:**
1. Copy your error message from terminal/IDE
2. Paste the entire error and code snippet
3. Ask: "Fix this error" or "What's wrong with this code?"
4. ChatGPT will provide detailed explanation
5. Copy the fixed code back to your project

**Example workflow:**
```
Error: Cannot find module 'react'

Paste error → ChatGPT → Get solution → npm install react → Problem solved
```

---

## Step-by-Step Error Fixing Process

### Step 1: Run Your Code
```bash
npm install
npm start
```

### Step 2: Copy Error Message
When you see an error:
```
[ERROR] Line 45: Syntax Error in service.yml
Unexpected token '}' at line 45
```

### Step 3: Send to AI

**Option A - GitHub Copilot:**
- Open: https://github.com/copilot
- Paste: The error message + file name
- Get: Instant fix with explanation

**Option B - ChatGPT:**
- Open: https://chatgpt.com
- Paste: Error message + 5-10 lines of code
- Get: Detailed explanation + solution

### Step 4: Implement Fix
1. Apply the fix to your local file
2. Test if it works
3. Commit to GitHub with message describing the fix

### Step 5: Track Changes
Your commits will show:
- WHO fixed it (your GitHub username)
- WHEN it was fixed (timestamp)
- WHAT was changed (diff)

---

## Common Error Types & Solutions

### JavaScript/TypeScript Errors
```
Error: 'undefined' is not a function
→ Send to Copilot/ChatGPT
→ Usually needs: import statement, null check, or typo fix
```

### Configuration Errors (YAML)
```
Error: Invalid YAML in deployement.yml
→ ChatGPT is better for YAML syntax
→ Paste the YAML file with error line number
```

### Docker Errors
```
Error: Docker build failed
→ Send Dockerfile + error message to Copilot
→ Usually needs: missing dependencies, base image issues
```

### npm/Package Errors
```
Error: Cannot find module
→ Send package.json + error to ChatGPT
→ Usually needs: npm install, version update
```

---

## Pro Tips

1. **Always Copy Full Error** - More context = Better solution
2. **Include File Name** - Tell AI which file has the problem
3. **Use GitHub Copilot First** - It's integrated with your repo
4. **For Complex Issues** - Use ChatGPT for detailed explanations
5. **Test After Fix** - Always verify the fix works before committing

---

## Links

- **GitHub Copilot**: https://github.com/copilot
- **ChatGPT**: https://chatgpt.com
- **Your Repository**: https://github.com/Exfin-ERP/SEP-Project
- **GitHub Docs**: https://docs.github.com/en/copilot

---

**Created**: 2025-12-27
**For**: SEP-Project Development Team
