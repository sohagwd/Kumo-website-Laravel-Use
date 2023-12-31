@extends('layouts.dashboard')

@section('content')
<div class="row py-1">
    <div class="col-lg-2">
        <div class="page-header-title">
            <h4>Dashboard</h4>
        </div>
    </div>
    <div class="col-lg-10 m-auto">
        <div class="page-header-breadcrumb">
            <ul class="breadcrumb-title">
                <li class="breadcrumb-item">
                    <a href="index.html">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="{{route('home')}}">Dashboard</a>
                </li>
            </ul>
        </div>
    </div>
</div>
{{-- <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('You are logged in!') }}
                </div>
            </div>
        </div>
    </div>
</div> --}}
 {{-- <!-- Visitor Chart Start-->
<div class="col-md-6 col-xl-4">
    <div class="card">
        <div class="card-block-big card-visitor-block">
            <div class="row">
                <div class="col-sm-8  card-visitor-button">
                    <button class="btn btn-primary btn-icon"><i class="icofont icofont-user-alt-3"></i></button>
                    <div class="card-contain">
                        <h6>2,534</h6>
                        <p class="text-muted f-18 m-0">Visitors</p>
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <span class="visitor-chart"></span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="col-md-6 col-xl-4">
    <div class="card">
        <div class="card-block-big card-visitor-block">
            <div class="row">
                <div class="col-sm-8 card-visitor-button">
                    <button class="btn btn-warning btn-icon"><i class="icofont icofont-shopping-cart"></i></button>
                    <div class="card-contain">
                        <h6>5,782</h6>
                        <p class="text-muted f-18 m-0">Total Sale</p>
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <span class="sale-chart"></span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="col-md-12 col-xl-4">
    <div class="card">
        <div class="card-block-big card-visitor-block">
            <div class="row">
                <div class="col-sm-8 card-visitor-button">
                    <button class="btn btn-success btn-icon"><i class="icofont icofont-shopping-cart"></i></button>
                    <div class="card-contain">
                        <h6>2,534</h6>
                        <p class="text-muted f-18 m-0">Revenue</p>
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <span class="resource-barchart"></span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Visitor Chart End-->
<!-- Analythics Start -->
<div class="col-xl-8 col-md-6">
    <div class="card">
        <div class="card-block">
            <h5>Analythics</h5>
        </div>
        <div class="card-block">
            <div id="analythics-graph" style="height:340px"></div>
        </div>
    </div>
</div>
<!-- Analythics End -->
<div class="col-xl-4 col-md-6">
    <div class="user-card-block card">
        <div class="card-block">
            <div class="top-card text-center">
                <img src="{{asset('dashboard_asset/images/widget/user1.png')}}" class="img-responsive" alt="">
            </div>
            <div class="card-contain text-center p-t-40">
                <h5 class="text-capitalize p-b-10">Gregory Johnes</h5>
                <p class="text-muted">Califonia, USA</p>
            </div>
            <div class="card-data m-t-40">
                <div class="row">
                    <div class="col-3 b-r-default text-center">
                        <p class="text-muted">Followers</p>
                        <span>345</span>
                    </div>
                    <div class="col-3 b-r-default text-center">
                        <p class="text-muted">Following</p>
                        <span>40</span>
                    </div>
                    <div class="col-3 b-r-default text-center">
                        <p class="text-muted">Questions</p>
                        <span>12</span>
                    </div>
                    <div class="col-3 text-center">
                        <p class="text-muted">Answers</p>
                        <span>40</span>
                    </div>
                </div>
            </div>
            <div class="card-button p-t-50">
                <div class="row">
                    <div class="col-6 text-right">
                        <button class="btn btn-primary btn-round">Follow</button>
                    </div>
                    <div class="col-6 text-left">
                        <button class="btn btn-success btn-round">Message</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Total Sale Start -->
<div class="col-md-4">
    <div class="card">
        <div class="card-block">
            <h5>Total Sales</h5>
        </div>
        <div class="card-block">
            <div class="row">
                <div class="col-4">
                    <div class="customtext">
                        <span>1,600,000</span>
                        <span class="p-t-5">USD</span>
                    </div>
                </div>
                <div class="col-8">
                    <span class="customchart"></span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Total Sale Start -->

<!-- Product table Start -->
<div class="col-md-8">
    <div class="card">
        <div class="card-block">
            <h5>Product Detail</h5>
        </div>
        <div class="card-block product-table">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr class="text-uppercase">
                            <th>Product</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Dilevery</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1. Awesome T-shirt</td>
                            <td>24</td>
                            <td><button type="button" class="btn btn-primary">$550</button></td>
                            <td>M oscow,Lenina 44-1</td>
                            <td><button type="button" class="btn btn-success btn-round btn-outline-success">View</button></td>
                        </tr>
                        <tr>
                            <td>2. Awesome T-shirt</td>
                            <td>24</td>
                            <td><button type="button" class="btn btn-primary">$550</button></td>
                            <td>M oscow,Lenina 44-1</td>
                            <td><button type="button" class="btn btn-success btn-round btn-outline-success">View</button></td>
                        </tr>
                        <tr>
                            <td>3. Awesome T-shirt</td>
                            <td>24</td>
                            <td><button type="button" class="btn btn-primary">$550</button></td>
                            <td>M oscow,Lenina 44-1</td>
                            <td><button type="button" class="btn btn-success btn-round btn-outline-success">View</button></td>
                        </tr>
                        <tr>
                            <td>4. Awesome T-shirt</td>
                            <td>24</td>
                            <td><button type="button" class="btn btn-primary">$550</button></td>
                            <td>M oscow,Lenina 44-1</td>
                            <td><button type="button" class="btn btn-success btn-round btn-outline-success">View</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Product table End -->

<!-- facebook Start -->
<div class="col-lg-12 col-xl-8">
    <div class="row">
        <div class="col-sm-12">
            <div class="news-card m-b-30 color-success card-block">
                <h6>Awesome News Title</h6>
                <span>22/12/2015</span>
                <p class="p-t-20">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
            </div>
        </div>
        <div class="col-sm-12">
            <div class="card borderless-card">
                <div class="row">
                    <div class="col-sm-5 weather-card-1  text-center">
                        <div class="mob-bg-calender bg-primary">
                            <div class="row p-t-20 p-b-20">
                                <div class="col-sm-12">
                                    <h4>Sunday</h4>
                                    <div class="row">
                                        <div class="col-6 text-right">
                                            <svg version="1.1" id="sun" class="climacon climacon_sun" viewbox="15 15 70 70">
                                                <clippath id="sunFillClip">
                                                    <path d="M0,0v100h100V0H0z M50.001,57.999c-4.417,0-8-3.582-8-7.999c0-4.418,3.582-7.999,8-7.999s7.998,3.581,7.998,7.999C57.999,54.417,54.418,57.999,50.001,57.999z"></path>
                                                </clippath>
                                                <g class="climacon_iconWrap climacon_iconWrap-sun">
                                                    <g class="climacon_componentWrap climacon_componentWrap-sun">
                                                        <g class="climacon_componentWrap climacon_componentWrap-sunSpoke">
                                                            <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-east" d="M72.03,51.999h-3.998c-1.105,0-2-0.896-2-1.999s0.895-2,2-2h3.998c1.104,0,2,0.896,2,2S73.136,51.999,72.03,51.999z"></path>
                                                            <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-northEast" d="M64.175,38.688c-0.781,0.781-2.049,0.781-2.828,0c-0.781-0.781-0.781-2.047,0-2.828l2.828-2.828c0.779-0.781,2.047-0.781,2.828,0c0.779,0.781,0.779,2.047,0,2.828L64.175,38.688z"></path>
                                                            <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M50.034,34.002c-1.105,0-2-0.896-2-2v-3.999c0-1.104,0.895-2,2-2c1.104,0,2,0.896,2,2v3.999C52.034,33.106,51.136,34.002,50.034,34.002z"></path>
                                                            <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-northWest" d="M35.893,38.688l-2.827-2.828c-0.781-0.781-0.781-2.047,0-2.828c0.78-0.781,2.047-0.781,2.827,0l2.827,2.828c0.781,0.781,0.781,2.047,0,2.828C37.94,39.469,36.674,39.469,35.893,38.688z"></path>
                                                            <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-west" d="M34.034,50c0,1.104-0.896,1.999-2,1.999h-4c-1.104,0-1.998-0.896-1.998-1.999s0.896-2,1.998-2h4C33.14,48,34.034,48.896,34.034,50z"></path>
                                                            <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-southWest" d="M35.893,61.312c0.781-0.78,2.048-0.78,2.827,0c0.781,0.78,0.781,2.047,0,2.828l-2.827,2.827c-0.78,0.781-2.047,0.781-2.827,0c-0.781-0.78-0.781-2.047,0-2.827L35.893,61.312z"></path>
                                                            <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-south" d="M50.034,65.998c1.104,0,2,0.895,2,1.999v4c0,1.104-0.896,2-2,2c-1.105,0-2-0.896-2-2v-4C48.034,66.893,48.929,65.998,50.034,65.998z"></path>
                                                            <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-southEast" d="M64.175,61.312l2.828,2.828c0.779,0.78,0.779,2.047,0,2.827c-0.781,0.781-2.049,0.781-2.828,0l-2.828-2.827c-0.781-0.781-0.781-2.048,0-2.828C62.126,60.531,63.392,60.531,64.175,61.312z"></path>
                                                        </g>
                                                        <g class="climacon_componentWrap climacon_componentWrap_sunBody" clip-path="url(#sunFillClip)">
                                                            <circle class="climacon_component climacon_component-stroke climacon_component-stroke_sunBody" cx="50.034" cy="50" r="11.999"></circle>
                                                        </g>
                                                    </g>
                                                </g>
                                            </svg>
                                        </div>
                                        <div class="col-6 text-left">
                                            <span class="weather-temp">72°</span>
                                        </div>
                                    </div>
                                    <h5>Wingston, D.C.</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-7 p-l-0">
                        <div class="text-center p-20">
                            <div class="row text-center daily-whether">
                                <div class="col-sm-3">
                                    <h5>SUN</h5>
                                    <svg version="1.1" id="w-svg-1" class="climacon climacon_cloudSnow" viewbox="15 15 70 70">
                                        <g class="climacon_iconWrap climacon_iconWrap-cloudSnow">
                                            <g class="climacon_wrapperComponent climacon_wrapperComponent-snow" clip-path="url(#snowFillClip)">
                                                <circle class="climacon_component climacon_component-stroke climacon_component-stroke_snow climacon_component-stroke_snow-left" cx="42.001" cy="59.641" r="2"></circle>
                                                <circle class="climacon_component climacon_component-stroke climacon_component-stroke_snow climacon_component-stroke_snow-middle" cx="50.001" cy="59.641" r="2"></circle>
                                                <circle class="climacon_component climacon_component-stroke climacon_component-stroke_snow climacon_component-stroke_snow-right" cx="57.999" cy="59.641" r="2"></circle>
                                            </g>
                                            <g class="climacon_wrapperComponent climacon_wrapperComponent-cloud">
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_cloud" d="M63.999,64.943v-4.381c2.39-1.386,3.999-3.963,3.999-6.922c0-4.417-3.581-7.999-7.999-7.999c-1.601,0-3.083,0.48-4.333,1.291c-1.23-5.317-5.974-9.291-11.665-9.291c-6.627,0-11.998,5.373-11.998,12c0,3.549,1.55,6.729,4,8.924v4.916c-4.777-2.769-8-7.922-8-13.84c0-8.836,7.163-15.999,15.998-15.999c6.004,0,11.229,3.312,13.965,8.204c0.664-0.113,1.337-0.205,2.033-0.205c6.627,0,11.999,5.373,11.999,11.999C71.998,58.863,68.654,63.293,63.999,64.943z"></path>
                                            </g>
                                        </g>
                                    </svg>
                                    <span>18°</span>
                                </div>
                                <div class="col-sm-3">
                                    <h5>MON</h5>
                                    <svg version="1.1" id="w-svg-2" class="climacon climacon_cloudDrizzleSunAlt" viewbox="15 15 70 70">
                                        <clippath id="sunCloudFillClip-2">
                                            <path d="M15,15v70h70V15H15z M57.945,49.641c-4.417,0-8-3.582-8-7.999c0-4.418,3.582-7.999,8-7.999s7.998,3.581,7.998,7.999C65.943,46.059,62.362,49.641,57.945,49.641z"></path>
                                        </clippath>
                                        <clippath id="cloudSunFillClip-1">
                                            <path d="M15,15v70h20.947V63.481c-4.778-2.767-8-7.922-8-13.84c0-8.836,7.163-15.998,15.998-15.998c6.004,0,11.229,3.312,13.965,8.203c0.664-0.113,1.338-0.205,2.033-0.205c6.627,0,11.998,5.373,11.998,12c0,5.262-3.394,9.723-8.107,11.341V85H85V15H15z"></path>
                                        </clippath>
                                        <g class="climacon_iconWrap climacon_iconWrap-cloudDrizzleSunAlt">
                                            <g clip-path="url(#cloudSunFillClip)">
                                                <g class="climacon_componentWrap climacon_componentWrap-sun climacon_componentWrap-sun_cloud">
                                                    <g class="climacon_componentWrap climacon_componentWrap_sunSpoke">
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M80.029,43.611h-3.998c-1.105,0-2-0.896-2-1.999s0.895-2,2-2h3.998c1.104,0,2,0.896,2,2S81.135,43.611,80.029,43.611z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M72.174,30.3c-0.781,0.781-2.049,0.781-2.828,0c-0.781-0.781-0.781-2.047,0-2.828l2.828-2.828c0.779-0.781,2.047-0.781,2.828,0c0.779,0.781,0.779,2.047,0,2.828L72.174,30.3z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M58.033,25.614c-1.105,0-2-0.896-2-2v-3.999c0-1.104,0.895-2,2-2c1.104,0,2,0.896,2,2v3.999C60.033,24.718,59.135,25.614,58.033,25.614z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M43.892,30.3l-2.827-2.828c-0.781-0.781-0.781-2.047,0-2.828c0.78-0.781,2.047-0.781,2.827,0l2.827,2.828c0.781,0.781,0.781,2.047,0,2.828C45.939,31.081,44.673,31.081,43.892,30.3z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M42.033,41.612c0,1.104-0.896,1.999-2,1.999h-4c-1.104,0-1.998-0.896-1.998-1.999s0.896-2,1.998-2h4C41.139,39.612,42.033,40.509,42.033,41.612z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M43.892,52.925c0.781-0.78,2.048-0.78,2.827,0c0.781,0.78,0.781,2.047,0,2.828l-2.827,2.827c-0.78,0.781-2.047,0.781-2.827,0c-0.781-0.78-0.781-2.047,0-2.827L43.892,52.925z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M58.033,57.61c1.104,0,2,0.895,2,1.999v4c0,1.104-0.896,2-2,2c-1.105,0-2-0.896-2-2v-4C56.033,58.505,56.928,57.61,58.033,57.61z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M72.174,52.925l2.828,2.828c0.779,0.78,0.779,2.047,0,2.827c-0.781,0.781-2.049,0.781-2.828,0l-2.828-2.827c-0.781-0.781-0.781-2.048,0-2.828C70.125,52.144,71.391,52.144,72.174,52.925z"></path>
                                                    </g>
                                                    <g class="climacon_wrapperComponent climacon_wrapperComponent-sunBody" clip-path="url(#sunCloudFillClip)">
                                                        <circle class="climacon_component climacon_component-stroke climacon_component-stroke_sunBody" cx="58.033" cy="41.612" r="11.999"></circle>
                                                    </g>
                                                </g>
                                            </g>
                                            <g class="climacon_wrapperComponent climacon_wrapperComponent-drizzle">
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_drizzle climacon_component-stroke_drizzle-left" id="Drizzle-Left_1_" d="M56.969,57.672l-2.121,2.121c-1.172,1.172-1.172,3.072,0,4.242c1.17,1.172,3.07,1.172,4.24,0c1.172-1.17,1.172-3.07,0-4.242L56.969,57.672z"></path>
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_drizzle climacon_component-stroke_drizzle-middle" d="M50.088,57.672l-2.119,2.121c-1.174,1.172-1.174,3.07,0,4.242c1.17,1.172,3.068,1.172,4.24,0s1.172-3.07,0-4.242L50.088,57.672z"></path>
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_drizzle climacon_component-stroke_drizzle-right" d="M43.033,57.672l-2.121,2.121c-1.172,1.172-1.172,3.07,0,4.242s3.07,1.172,4.244,0c1.172-1.172,1.172-3.07,0-4.242L43.033,57.672z"></path>
                                            </g>
                                            <g class="climacon_wrapperComponent climacon_wrapperComponent-cloud" clip-path="url(#cloudFillClip)">
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_cloud" d="M63.999,64.944v-4.381c2.387-1.386,3.998-3.961,3.998-6.92c0-4.418-3.58-8-7.998-8c-1.603,0-3.084,0.481-4.334,1.291c-1.232-5.316-5.973-9.29-11.664-9.29c-6.628,0-11.999,5.372-11.999,12c0,3.549,1.55,6.729,3.998,8.926v4.914c-4.776-2.769-7.998-7.922-7.998-13.84c0-8.836,7.162-15.999,15.999-15.999c6.004,0,11.229,3.312,13.965,8.203c0.664-0.113,1.336-0.205,2.033-0.205c6.627,0,11.998,5.373,11.998,12C71.997,58.864,68.655,63.296,63.999,64.944z"></path>
                                            </g>
                                        </g>
                                    </svg>
                                    <span>16°</span>
                                </div>
                                <div class="col-sm-3">
                                    <h5>TUE</h5>
                                    <svg version="1.1" id="w-svg-3" class="climacon climacon_cloudRain" viewbox="15 15 70 70">
                                        <clippath id="cloudFillClip-4">
                                            <path d="M15,15v70h70V15H15z M59.943,61.639c-3.02,0-12.381,0-15.999,0c-6.626,0-11.998-5.371-11.998-11.998c0-6.627,5.372-11.999,11.998-11.999c5.691,0,10.434,3.974,11.665,9.29c1.252-0.81,2.733-1.291,4.334-1.291c4.418,0,8,3.582,8,8C67.943,58.057,64.361,61.639,59.943,61.639z"></path>
                                        </clippath>
                                        <g class="climacon_iconWrap climacon_iconWrap-cloudRain">
                                            <g class="climacon_wrapperComponent climacon_wrapperComponent-rain">
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- left" d="M41.946,53.641c1.104,0,1.999,0.896,1.999,2v15.998c0,1.105-0.895,2-1.999,2s-2-0.895-2-2V55.641C39.946,54.537,40.842,53.641,41.946,53.641z"></path>
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- middle" d="M49.945,57.641c1.104,0,2,0.896,2,2v15.998c0,1.104-0.896,2-2,2s-2-0.896-2-2V59.641C47.945,58.535,48.841,57.641,49.945,57.641z"></path>
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- right" d="M57.943,53.641c1.104,0,2,0.896,2,2v15.998c0,1.105-0.896,2-2,2c-1.104,0-2-0.895-2-2V55.641C55.943,54.537,56.84,53.641,57.943,53.641z"></path>
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- left" d="M41.946,53.641c1.104,0,1.999,0.896,1.999,2v15.998c0,1.105-0.895,2-1.999,2s-2-0.895-2-2V55.641C39.946,54.537,40.842,53.641,41.946,53.641z"></path>
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- middle" d="M49.945,57.641c1.104,0,2,0.896,2,2v15.998c0,1.104-0.896,2-2,2s-2-0.896-2-2V59.641C47.945,58.535,48.841,57.641,49.945,57.641z"></path>
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_rain climacon_component-stroke_rain- right" d="M57.943,53.641c1.104,0,2,0.896,2,2v15.998c0,1.105-0.896,2-2,2c-1.104,0-2-0.895-2-2V55.641C55.943,54.537,56.84,53.641,57.943,53.641z"></path>
                                            </g>
                                            <g class="climacon_wrapperComponent climacon_wrapperComponent_cloud" clip-path="url(#cloudFillClip)">
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_cloud" d="M63.943,64.941v-4.381c2.389-1.384,4-3.961,4-6.92c0-4.417-3.582-8-8-8c-1.601,0-3.082,0.48-4.334,1.291c-1.23-5.317-5.973-9.29-11.665-9.29c-6.626,0-11.998,5.372-11.998,11.998c0,3.549,1.551,6.728,4,8.924v4.916c-4.777-2.768-8-7.922-8-13.84c0-8.835,7.163-15.997,15.998-15.997c6.004,0,11.229,3.311,13.965,8.203c0.664-0.113,1.338-0.205,2.033-0.205c6.627,0,11.998,5.372,11.998,12C71.941,58.863,68.602,63.293,63.943,64.941z"></path>
                                            </g>
                                        </g>
                                    </svg>
                                    <span>11°</span>
                                </div>
                                <div class="col-sm-3">
                                    <h5>WED</h5>
                                    <svg version="1.1" id="w-svg-4" class="climacon climacon_cloudSnowSunAlt" viewbox="15 15 70 70">
                                        <clippath id="cloudFillClip-2">
                                            <path d="M15,15v70h70V15H15z M59.943,61.639c-3.02,0-12.381,0-15.999,0c-6.626,0-11.998-5.371-11.998-11.998c0-6.627,5.372-11.999,11.998-11.999c5.691,0,10.434,3.974,11.665,9.29c1.252-0.81,2.733-1.291,4.334-1.291c4.418,0,8,3.582,8,8C67.943,58.057,64.361,61.639,59.943,61.639z"></path>
                                        </clippath>
                                        <clippath id="sunCloudFillClip">
                                            <path d="M15,15v70h70V15H15z M57.945,49.641c-4.417,0-8-3.582-8-7.999c0-4.418,3.582-7.999,8-7.999s7.998,3.581,7.998,7.999C65.943,46.059,62.362,49.641,57.945,49.641z"></path>
                                        </clippath>
                                        <clippath id="cloudSunFillClip">
                                            <path d="M15,15v70h20.947V63.481c-4.778-2.767-8-7.922-8-13.84c0-8.836,7.163-15.998,15.998-15.998c6.004,0,11.229,3.312,13.965,8.203c0.664-0.113,1.338-0.205,2.033-0.205c6.627,0,11.998,5.373,11.998,12c0,5.262-3.394,9.723-8.107,11.341V85H85V15H15z"></path>
                                        </clippath>
                                        <clippath id="snowFillClip">
                                            <path d="M15,15v70h70V15H15z M50,65.641c-1.104,0-2-0.896-2-2c0-1.104,0.896-2,2-2c1.104,0,2,0.896,2,2S51.104,65.641,50,65.641z"></path>
                                        </clippath>
                                        <g class="climacon_iconWrap climacon_iconWrap-cloudSnowSunAlt">
                                            <g clip-path="url(#cloudSunFillClip)">
                                                <g class="climacon_componentWrap climacon_componentWrap-sun climacon_componentWrap-sun_cloud">
                                                    <g class="climacon_componentWrap climacon_componentWrap_sunSpoke">
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M80.029,43.611h-3.998c-1.105,0-2-0.896-2-1.999s0.895-2,2-2h3.998c1.104,0,2,0.896,2,2S81.135,43.611,80.029,43.611z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M72.174,30.3c-0.781,0.781-2.049,0.781-2.828,0c-0.781-0.781-0.781-2.047,0-2.828l2.828-2.828c0.779-0.781,2.047-0.781,2.828,0c0.779,0.781,0.779,2.047,0,2.828L72.174,30.3z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M58.033,25.614c-1.105,0-2-0.896-2-2v-3.999c0-1.104,0.895-2,2-2c1.104,0,2,0.896,2,2v3.999C60.033,24.718,59.135,25.614,58.033,25.614z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M43.892,30.3l-2.827-2.828c-0.781-0.781-0.781-2.047,0-2.828c0.78-0.781,2.047-0.781,2.827,0l2.827,2.828c0.781,0.781,0.781,2.047,0,2.828C45.939,31.081,44.673,31.081,43.892,30.3z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M42.033,41.612c0,1.104-0.896,1.999-2,1.999h-4c-1.104,0-1.998-0.896-1.998-1.999s0.896-2,1.998-2h4C41.139,39.612,42.033,40.509,42.033,41.612z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M43.892,52.925c0.781-0.78,2.048-0.78,2.827,0c0.781,0.78,0.781,2.047,0,2.828l-2.827,2.827c-0.78,0.781-2.047,0.781-2.827,0c-0.781-0.78-0.781-2.047,0-2.827L43.892,52.925z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M58.033,57.61c1.104,0,2,0.895,2,1.999v4c0,1.104-0.896,2-2,2c-1.105,0-2-0.896-2-2v-4C56.033,58.505,56.928,57.61,58.033,57.61z"></path>
                                                        <path class="climacon_component climacon_component-stroke climacon_component-stroke_sunSpoke climacon_component-stroke_sunSpoke-north" d="M72.174,52.925l2.828,2.828c0.779,0.78,0.779,2.047,0,2.827c-0.781,0.781-2.049,0.781-2.828,0l-2.828-2.827c-0.781-0.781-0.781-2.048,0-2.828C70.125,52.144,71.391,52.144,72.174,52.925z"></path>
                                                    </g>
                                                    <g class="climacon_wrapperComponent climacon_wrapperComponent-sunBody" clip-path="url(#sunCloudFillClip)">
                                                        <circle class="climacon_component climacon_component-stroke climacon_component-stroke_sunBody" cx="58.033" cy="41.612" r="11.999"></circle>
                                                    </g>
                                                </g>
                                            </g>
                                            <g class="climacon_wrapperComponent climacon_wrapperComponent-snowAlt">
                                                <g class="climacon_component climacon_component climacon_component-snowAlt" clip-path="url(#snowFillClip)">
                                                    <path class="climacon_component climacon_component-stroke climacon_component-stroke_snowAlt" d="M43.072,59.641c0.553-0.957,1.775-1.283,2.732-0.731L48,60.176v-2.535c0-1.104,0.896-2,2-2c1.104,0,2,0.896,2,2v2.535l2.195-1.268c0.957-0.551,2.18-0.225,2.73,0.732c0.553,0.957,0.225,2.18-0.73,2.731l-2.196,1.269l2.196,1.268c0.955,0.553,1.283,1.775,0.73,2.732c-0.552,0.954-1.773,1.282-2.73,0.729L52,67.104v2.535c0,1.105-0.896,2-2,2c-1.104,0-2-0.895-2-2v-2.535l-2.195,1.269c-0.957,0.553-2.18,0.226-2.732-0.729c-0.552-0.957-0.225-2.181,0.732-2.732L46,63.641l-2.195-1.268C42.848,61.82,42.521,60.598,43.072,59.641z"></path>
                                                </g>
                                            </g>
                                            <g class="climacon_wrapperComponent climacon_wrapperComponent-cloud">
                                                <path class="climacon_component climacon_component-stroke climacon_component-stroke_cloud" d="M61.998,65.461v-4.082c3.447-0.891,6-4.012,6-7.738c0-4.417-3.582-7.999-7.999-7.999c-1.601,0-3.084,0.48-4.334,1.291c-1.231-5.317-5.973-9.291-11.664-9.291c-6.627,0-11.999,5.373-11.999,12c0,4.438,2.417,8.305,5.999,10.379v4.444c-5.86-2.375-9.998-8.112-9.998-14.825c0-8.835,7.162-15.999,15.998-15.999c6.004,0,11.229,3.312,13.965,8.204c0.664-0.113,1.336-0.205,2.033-0.205c6.626,0,11.998,5.373,11.998,11.998C71.997,59.586,67.671,64.506,61.998,65.461z"></path>
                                            </g>
                                        </g>
                                    </svg>
                                    <span>21°</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- facebook End -->

<!-- Start-->
<div class="col-md-12 col-xl-4">
    <!-- Overdue Task Start-->
    <div class="row">
        <div class="col-xl-12 col-md-6">
            <div class="card">
                <div class="card-block-big card-status">
                    <h5>Income Status</h5>
                    <div class="card-block text-center">
                        <h2 class="text-primary">$4,612</h2>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <p class="f-16 text-muted m-0">Totale Income : $4,679</p>
                        </div>
                        <div class="col-6">
                            <div class="text-muted f-16 text-right">
                                <span>20.56%</span>
                                <i class="icofont icofont-caret-up text-success"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-12 col-md-6">
            <div class="card">
                <div class="card-block-big card-status">
                    <h5>Sale Status</h5>
                    <div class="card-block text-center">
                        <h2 class="text-warning">425</h2>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <p class="f-16 text-muted m-0">Totale Income : 3,712</p>
                        </div>
                        <div class="col-6">
                            <div class="text-muted f-16 text-right">
                                <span>20.56%</span>
                                <i class="icofont icofont-caret-down text-primary"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End--> --}}

<!-- Reset Order Start -->
<div class="col-md-12">
    <div class="card">
        <div class="card-block">
            <h5>Reset Order</h5>
        </div>
        <div class="card-block reset-table p-t-0">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr class="text-uppercase">
                            <th>Image</th>
                            <th>Product Name</th>
                            <th>Product Code</th>
                            <th>Status</th>
                            <th>Purchased on</th>
                            <th>Price</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="#!"><img class="img-responsive" src="{{asset('dashboard_asset/images/widget/prod1.jpg')}}" alt="chat-user"></a>
                            </td>
                            <td>Leisure Suit Casual</td>
                            <td>3BSD59</td>
                            <td><button type="button" class="btn btn-success btn-round">Pending</button></td>
                            <td>27 Sep 2015</td>
                            <td>$99.00</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td><a href="#!"><img class="img-responsive" src="{{asset('dashboard_asset/images/widget/prod4.jpg')}}" alt="chat-user"></a>
                            </td>
                            <td>Leisure Suit Casual</td>
                            <td>3BSD59</td>
                            <td><button type="button" class="btn btn-primary btn-round">Process</button></td>
                            <td>27 Sep 2015</td>
                            <td>$99.00</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td><a href="#!"><img class="img-responsive" src="{{asset('dashboard_asset/images/widget/prod2.jpg')}}" alt="chat-user"></a>
                            </td>
                            <td>Leisure Suit Casual</td>
                            <td>3BSD59</td>
                            <td><button type="button" class="btn btn-warning btn-round">Failed</button></td>
                            <td>27 Sep 2015</td>
                            <td>$99.00</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td><a href="#!"><img class="img-responsive" src="{{asset('dashboard_asset/images/widget/prod3.jpg')}}" alt="chat-user"></a>
                            </td>
                            <td>Leisure Suit Casual</td>
                            <td>3BSD59</td>
                            <td><button type="button" class="btn btn-primary btn-round">Process</button></td>
                            <td>27 Sep 2015</td>
                            <td>$99.00</td>
                            <td>2</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Reset Order End -->
@endsection
