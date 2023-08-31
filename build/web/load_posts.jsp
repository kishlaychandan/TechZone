<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.Post"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>

<div class="row">
<%
    Thread.sleep(500);
    PostDao d=new PostDao(ConnectionProvider.getConnection());
    
    int cid=Integer.parseInt(request.getParameter("cid"));
    List<Post> posts=null;
    if(cid==0){
    posts=d.getAllPosts();
    }
    else{
    posts=d.getPostByCatId(cid);
    }
    
    if(posts.size()==0){
    out.println("<h3 class='display-3 text-center'>There is no post in this category...</h3>");
    }
    
    
    for(Post p:posts){
    %>
    <div class="col-md-6">
        <div class="card">
            <!--<p>loaded</p>-->
        <img class="card-img-top" src="tech_pics/<%= p.getpPic() %>" alt="Card image cap">
        <div class="card-body">
            <b><%= p.getpTitle() %></b>
            <p><%= p.getpContent() %></p>
            <pre><%= p.getpCode() %></pre>
            
            
        </div>   
        </div>
        
    </div>
    
    <%
    }



%>

</div>