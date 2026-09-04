#!/bin/bash

# اعمال پورت داینامیک ریلی روی تنظیمات یا اجرای سرویس
echo "Starting PasarGuard on Railway..."

# اگر پورت ریلی مشخص شده باشد، از آن استفاده می‌شود
if [ -z "$PORT" ]; then
    PORT=8000
fi

echo "Service is running on port: $PORT"

# اجرای دستور نهایی پنل یا نگه داشتن کانتینر روشن
tail -f /dev/null
