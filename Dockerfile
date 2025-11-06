# Dùng image Tomcat 9
FROM tomcat:9.0-jdk11-temurin

# Xóa các ứng dụng web mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war (từ thư mục 'dist' bạn đã build)
# vào Tomcat và đổi tên thành ROOT.war (để chạy ở trang chủ)
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Báo cho Render biết ứng dụng chạy ở port 8080
EXPOSE 8080