<body>
 <header>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
       <div class="container">
        <a class="navbar-brand" href="/">
         <span>Bookers</span>
        </a>
       </div>
      </nav>
  </header>
    
  <main>
     <p id="notice">Welcome! You have signed up successfully.</p>
   <div class="container px-5 px-sm-0">
    <div class="row">flex
     <div class="col-md-3">
      <h2>User info</h2>
      <table class="table">
       <tbody>
        <tr></tr>
       <tr>
         <th>name</th>
         <th>@name</th>
       </tr>
       <th>introduction</th>
       <th></th>
       </tr>
       </tbody>
      </table>
      <div class="row">
      
      
      
      
      <div class="col-md-8 offset-md-1">



</body>
<div>
  <h3><%= @user.name %></h3>
  <%= image_tag @user.get_profile_image(100,100) %>
  <p><%= link_to "プロフィール編集", User %></p></div>
<% @post_images.each do |post_image| %>
</div>

<h2>title</h2>
<p><%= @book.title %></p>

<h2>option</h2>
<p><%= @book.body %></p>
