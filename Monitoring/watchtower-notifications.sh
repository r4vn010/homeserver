#!/bin/bash
echo "=== Telegram Notifications Setup ==="
echo ""
echo "1. Open Telegram → @BotFather → /newbot"
echo "2. Follow instructions and copy your Bot Token"
echo ""
read -p "Paste your Bot Token here: " BOT_TOKEN
echo ""
echo "3. Send any message to your new bot"
echo "4. Open this URL in browser:"
echo "   https://api.telegram.org/bot${BOT_TOKEN}/getUpdates"
echo "5. Find 'chat' → 'id' in the response"
echo ""
read -p "Paste your Chat ID here: " CHAT_ID
echo ""
echo "WATCHTOWER_TELEGRAM_URL=telegram://${BOT_TOKEN}@telegram?chats=${CHAT_ID}" >> .env
echo "✓ Saved to .env"
