# Dùng image Tomcat 9
FROM tomcat:9.0-jdk11-temurin

# ----- THÊM DÒNG NÀY ĐỂ SỬA LỖI -----
# Tắt cổng shutdown (8005) bằng cách đổi nó thành "-1"
RUN sed -i 's/Server port="8005"/Server port="-1"/' /usr/local/tomcat/conf/server.xml
# -----------------------------------

# Xóa các ứng dụng web mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war của bạn vào
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Báo cho Render biết ứng dụng chạy ở port 8080
EXPOSE 8080