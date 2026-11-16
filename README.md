# AlltagDeutsch

iOS application for learning everyday German language with AI-powered chat and news feed.

## Features
- AI Chat for practicing German conversations (powered by Gemini)
- German news feed
- Speech synthesis for pronunciation

## Building IPA

This repository includes a GitHub Actions workflow that automatically builds an unsigned `.ipa` file on every push to `main`.

### Setup
1. Add a repository secret named `GEMINI_API_KEY` with your Google Gemini API key.
2. Push to `main` or manually trigger the "Build iOS IPA" workflow.
3. Download the `AlltagDeutsch-iOS-IPA` artifact from the Actions run.

The IPA is unsigned and can be used for testing or further signing.

## Local Development
Requires Xcode 16+ and XcodeGen:
```bash
brew install xcodegen
xcodegen generate
open AlltagDeutsch.xcodeproj
```

Set `GEMINI_API_KEY` in your environment or create `Secrets.xcconfig`.
