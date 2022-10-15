@extends('profile.app')
@section('title' , 'Profile')

@section('content')

<div id="layoutSidenav_content">

    <chat :friend="{{json_encode($friend)}}" :auth="{{json_encode($user)}}"></chat>

@endsection

@push('scripts')
{{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/4.5.2/socket.io.js" integrity="sha512-VJ6+sp2E5rFQk05caiXXzQd1wBABpjEj1r5kMiLmGAAgwPItw1YpqsCCBtq8Yr1x6C49/mTpRdXtq8O2RcZhlQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
                const socket = io.connect("http://127.0.0.1:3000");

</script>
 --}}
@endpush
