<h1>User into</h1>
  <div class="text-success">
    <%= flash[:notice] %>
  </div>
  <div class="text-danger">
    <%= flash.now[:alt] %>
  </div>


<h1>New book</h1>

<h2>title</h2>
<p><%= @book.title %></p>

<h2>option</h2>
<p><%= @book.body %></p>
