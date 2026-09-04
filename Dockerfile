FROM ubuntu:22.04

# نصب پیش‌نیازها
RUN apt-get update && apt-get install -y \
    curl \
    sudo \
    bash \
    systemctl \
    && rm -rf /var/lib/apt/lists/*

# اجرای اسکریپت نصب پاسارگاد
RUN curl -fsSL https://github.com/PasarGuard/scripts/raw/main/pasarguard.sh -o pasarguard.sh
RUN bash pasarguard.sh @ install --database timescaledb

# پورت‌های مورد نیاز پنل
EXPOSE 8000 2053

# دستور نهایی برای اجرای پنل
CMD ["bash", "-c", "pasarguard start"]
