@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
<div id="content-header">
<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Orders</a> </div>
<h1>Oder #{{$orderDetails->id}}</h1>
</div>
<div class="container-fluid">
<hr>
<div class="row-fluid">
        <div class="span6">
                <div class="widget-box">
                <div class="widget-title">
                    <h5>Order Details</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-striped table-bordered">
                    
            <tbody>
                <tr>
                <td class="taskDesc"> Order Date</td>
                <td class="taskStatus">{{$orderDetails->created_at}}</td>
                </tr>
                <tr>
                <td class="taskDesc"> Order Status</td>
                <td class="taskStatus">{{$orderDetails->order_status}}</td>
                </tr>
            </tbody>
                    </table>
                </div>
                </div>
                <div class="widget-box">
                <div class="widget-title">
                    <h5>Billing Address</h5>
                </div>
                <div class="widget-content">Billing address Come here...</div>
                </div>
            </div>
<div class="span6">
        <div class="widget-box">
                <div class="widget-title">
                    <h5>Customer Details</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-striped table-bordered">
                    
            <tbody>
                <tr>
                <td class="taskDesc">Customer Name</td>
                <td class="taskStatus">{{$orderDetails->name}}</td>
                </tr>
                <tr>
                <td class="taskDesc">Customer Email</td>
                <td class="taskStatus">{{$orderDetails->user_email}}</td>
                </tr>
            </tbody>
                    </table>
                </div>
                </div>
        <div class="widget-box">
        <div class="widget-title">
            <h5>Shipping Address</h5>
        </div>
        <div class="widget-content">Shipping address Come here...</div>
        </div>
</div>
</div>
</div>
</div>

@endsection