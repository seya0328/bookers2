
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
