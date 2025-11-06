# Bước 1: Chọn image Tomcat 10.1 và JDK 17
# Image này tương thích với Jakarta EE 10 và JDK 17 của bạn
FROM tomcat:10.1-jdk17

# Bước 2: Copy file .war của bạn vào thư mục webapps
# Đổi tên nó thành ROOT.war để ứng dụng chạy ở đường dẫn gốc (/)
COPY dist/Exercise02.war /usr/local/tomcat/webapps/ROOT.war