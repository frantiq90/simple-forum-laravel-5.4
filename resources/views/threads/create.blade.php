@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Create A New Thread</div>

                <div class="panel-body">
                   <form action="/threads" method="POST">
                        {{ csrf_field() }}
                        <div class="form-group">
                           <label for="title">Title:</label>
                           <input type="text" class="form-control" id="title" placeholder="title" name="title">
                        </div>

                        <div class="form-group">
                           <label for="body">Body:</label>
                           <textarea name="body" class="form-control" id="body" placeholder="body" rows="8"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">Publish</button>
                   </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
