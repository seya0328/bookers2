<h1>User info</h1>
  <%= form_with model: @post_image do |f| %>
    <h4>Name</h4>
      <%= f.text_field :title %>
    <h4>画像</h4>
      <%= f.file_field :image, accept: "image/*" %>
    <h4>Introduction</h4>
      <%= f.text_area :caption %>
    <%= f.submit 'Updete User' %>
  <% end %>