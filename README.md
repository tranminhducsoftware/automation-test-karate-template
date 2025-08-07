# Karate Automation Test Project

> **Mẫu project test tự động API backend sử dụng Karate Framework (chuẩn quốc tế)**

---

## 🚀 Mục tiêu

- Tự động kiểm thử (automation test) API cho backend.
- Quản lý testcase, dễ mở rộng, tái sử dụng, CI/CD friendly.
- Áp dụng best practice tổ chức project Karate hiện đại.

---

## 🛠 Yêu cầu hệ thống

- **Java JDK** >= 8 (nên dùng JDK 11 hoặc JDK 17 cho bảo mật và hiệu suất tối đa)
- **Maven** >= 3.6
- **VS Code** (hoặc IntelliJ, Eclipse...) khuyến khích cài thêm:
  - Java Extension Pack
  - Maven for Java
  - Karate Runner
  - Cucumber (Gherkin) Full Support

---

## ⚡️ Hướng dẫn setup nhanh

1. **Clone project về:**
    ```bash
    git clone https://github.com/yourusername/your-repo-name.git
    cd your-repo-name
    ```

2. **Cài đặt dependency & build lần đầu:**
    ```bash
    mvn clean install
    ```

3. **Cấu trúc thư mục quan trọng:**
    ```
    src/test/java/
    ├── features/           # Chứa các file .feature chia theo domain
    │    ├── user/
    │    ├── product/
    │    └── common/
    ├── runners/            # Chứa các file Java runner cho từng nhóm test
    ├── karate-config.js    # File config toàn cục cho Karate
    ├── helpers/            # Chứa Java helper, util, custom step
    └── data/               # Chứa file json, csv, data test mẫu
    ```

---

## 📄 Cách chạy test

**Chạy toàn bộ test (all feature):**
```bash
mvn test
```

**Chạy 1 nhóm feature với runner riêng:**
```bash
mvn test -Dtest=runners.UserRunner
```

**Chạy theo tag (ví dụ chỉ smoke test):**
```bash
mvn test -Dkarate.options="--tags @smoke"
```

## 📊 Xem kết quả test ở đâu?
Ngay trên terminal/console (pass/fail, log tóm tắt).

Report HTML chi tiết:

```bash
target/karate-reports/karate-summary.html
```
trên trình duyệt để xem report đẹp, click từng test case.

features/
├── user/
│   ├── login.feature
│   ├── register.feature
├── product/
│   ├── create.feature
│   ├── delete.feature
├── common/
│   └── healthcheck.feature


Mỗi file .feature: Test 1 nhóm chức năng hoặc 1 API lớn.

Scenario: Mỗi case kiểm thử nhỏ.

Dùng tag (@smoke, @regression, ...) để lọc test khi build CI/CD.

## 🧩 Một số lưu ý và best practice
Không nhồi quá nhiều scenario vào 1 file .feature

Tách biệt rõ data test ra folder data/ hoặc param hóa

Tên file, scenario rõ ràng, dễ hiểu

Quản lý biến môi trường, baseUrl qua karate-config.js

Không push file log, target/, .idea/, .vscode/ lên git (sử dụng .gitignore chuẩn Maven/Java)

## 📚 Tài liệu tham khảo
Karate Official Docs

Karate GitHub

Maven Getting Started

Maven Central Search

## 📌 Người phát triển chính
Tên: Tran Minh Duc

Email: tranminhducsoftware@gmail.com

