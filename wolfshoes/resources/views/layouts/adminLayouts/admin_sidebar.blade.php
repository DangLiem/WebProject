<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li class="active"><a href="{{url('/admin/dashboard')}}"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
        <li> <a href="charts.html"><i class="icon icon-signal"></i> <span>Charts &amp; graphs</span></a> </li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Products</span> <span class="label label-important">3</span></a>
            <ul>
                <li><a title="" href="{{url('/admin/upload')}}"><i class="fas fa-cloud-upload-alt"></i> <span class="text">Upload Product </span></a></li>
                <li><a title="" href="#"><i class="fas fa-edit"></i> <span class="text">Edit Product </span></a></li>
                <li><a title="" href="{{url('/admin/list')}}"><i class="fas fa-list-ol"></i> <span class="text">List Products </span></a></li>
            </ul>
        </li>
        <li class="content"> <span>Monthly Bandwidth Transfer</span>
            <div class="progress progress-mini progress-danger active progress-striped">
                <div style="width: 77%;" class="bar"></div>
            </div>
            <span class="percent">77%</span>
            <div class="stat">21419.94 / 14000 MB</div>
        </li>
        <li class="content"> <span>Disk Space Usage</span>
            <div class="progress progress-mini active progress-striped">
                <div style="width: 87%;" class="bar"></div>
            </div>
            <span class="percent">87%</span>
            <div class="stat">604.44 / 4000 MB</div>
        </li>
    </ul>
</div>
<!--sidebar-menu-->