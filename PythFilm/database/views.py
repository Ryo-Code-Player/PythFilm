from django.shortcuts import render, get_object_or_404, redirect
from .models import Phim
from .forms import PhimForm
from django.shortcuts import render

def home(request):
    return render(request, 'home.html')  # Render a home page template


# View để hiển thị danh sách phim
def danh_sach_phim(request):
    ds_phim = Phim.objects.all()
    return render(request, 'base/danh_sach_phim.html', {'ds_phim': ds_phim})

# View để thêm phim
def them_phim(request):
    if request.method == 'POST':
        form = PhimForm(request.POST, request.FILES)  # Chấp nhận request.FILES
        if form.is_valid():
            form.save()
            return redirect('danh_sach_phim')
    else:
        form = PhimForm()
    return render(request, 'base/them_phim.html', {'form': form})

# View để sửa phim
def sua_phim(request, id):
    phim = get_object_or_404(Phim, id=id)
    if request.method == 'POST':
        form = PhimForm(request.POST, instance=phim)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_phim')
    else:
        form = PhimForm(instance=phim)
    return render(request, 'base/sua_phim.html', {'form': form})

# View để xóa phim
def xoa_phim(request, id):
    phim = get_object_or_404(Phim, id=id)
    if request.method == 'POST':
        phim.delete()
        return redirect('danh_sach_phim')
    return render(request, 'base/xoa_phim.html', {'phim': phim})



from .models import NguoiDung
from .forms import NguoiDungForm

# View để hiển thị danh sách người dùng
def danh_sach_nguoi_dung(request):
    ds_nguoi_dung = NguoiDung.objects.all()
    return render(request, 'base/danh_sach_nguoi_dung.html', {'ds_nguoi_dung': ds_nguoi_dung})

# View để thêm người dùng
def them_nguoi_dung(request):
    if request.method == 'POST':
        form = NguoiDungForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_nguoi_dung')
    else:
        form = NguoiDungForm()
    return render(request, 'base/them_nguoi_dung.html', {'form': form})

# View để sửa người dùng
def sua_nguoi_dung(request, id):
    nguoi_dung = get_object_or_404(NguoiDung, id=id)
    if request.method == 'POST':
        form = NguoiDungForm(request.POST, request.FILES, instance=nguoi_dung)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_nguoi_dung')
    else:
        form = NguoiDungForm(instance=nguoi_dung)
    return render(request, 'base/sua_nguoi_dung.html', {'form': form})

# View để xóa người dùng
def xoa_nguoi_dung(request, id):
    nguoi_dung = get_object_or_404(NguoiDung, id=id)
    if request.method == 'POST':
        nguoi_dung.delete()
        return redirect('danh_sach_nguoi_dung')
    return render(request, 'base/xoa_nguoi_dung.html', {'nguoi_dung': nguoi_dung})



from .models import TheLoai
from .forms import TheLoaiForm

# View để hiển thị danh sách thể loại
def danh_sach_the_loai(request):
    ds_the_loai = TheLoai.objects.all()
    return render(request, 'base/danh_sach_the_loai.html', {'ds_the_loai': ds_the_loai})

# View để thêm thể loại
def them_the_loai(request):
    if request.method == 'POST':
        form = TheLoaiForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_the_loai')
    else:
        form = TheLoaiForm()
    return render(request, 'base/them_the_loai.html', {'form': form})

# View để sửa thể loại
def sua_the_loai(request, id):
    the_loai = get_object_or_404(TheLoai, id=id)
    if request.method == 'POST':
        form = TheLoaiForm(request.POST, instance=the_loai)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_the_loai')
    else:
        form = TheLoaiForm(instance=the_loai)
    return render(request, 'base/sua_the_loai.html', {'form': form})

# View để xóa thể loại
def xoa_the_loai(request, id):
    the_loai = get_object_or_404(TheLoai, id=id)
    if request.method == 'POST':
        the_loai.delete()
        return redirect('danh_sach_the_loai')
    return render(request, 'base/xoa_the_loai.html', {'the_loai': the_loai})


from .models import DinhDangPhim
from .forms import DinhDangPhimForm

# View hiển thị danh sách định dạng phim
def danh_sach_dinh_dang_phim(request):
    ds_dinh_dang_phim = DinhDangPhim.objects.all()
    return render(request, 'base/danh_sach_dinh_dang_phim.html', {'ds_dinh_dang_phim': ds_dinh_dang_phim})

# View thêm định dạng phim
def them_dinh_dang_phim(request):
    if request.method == 'POST':
        form = DinhDangPhimForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_dinh_dang_phim')
    else:
        form = DinhDangPhimForm()
    return render(request, 'base/them_dinh_dang_phim.html', {'form': form})

# View sửa định dạng phim
def sua_dinh_dang_phim(request, id):
    dinh_dang_phim = get_object_or_404(DinhDangPhim, id=id)
    if request.method == 'POST':
        form = DinhDangPhimForm(request.POST, instance=dinh_dang_phim)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_dinh_dang_phim')
    else:
        form = DinhDangPhimForm(instance=dinh_dang_phim)
    return render(request, 'base/sua_dinh_dang_phim.html', {'form': form})

# View xóa định dạng phim
def xoa_dinh_dang_phim(request, id):
    dinh_dang_phim = get_object_or_404(DinhDangPhim, id=id)
    if request.method == 'POST':
        dinh_dang_phim.delete()
        return redirect('danh_sach_dinh_dang_phim')
    return render(request, 'base/xoa_dinh_dang_phim.html', {'dinh_dang_phim': dinh_dang_phim})



from django.shortcuts import render, get_object_or_404, redirect
from .models import RapChieu
from .forms import RapChieuForm

# View hiển thị danh sách rạp chiếu
def danh_sach_rap_chieu(request):
    ds_rap_chieu = RapChieu.objects.all()
    return render(request, 'base/danh_sach_rap_chieu.html', {'ds_rap_chieu': ds_rap_chieu})

# View thêm rạp chiếu
def them_rap_chieu(request):
    if request.method == 'POST':
        form = RapChieuForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_rap_chieu')
    else:
        form = RapChieuForm()
    return render(request, 'base/them_rap_chieu.html', {'form': form})

# View sửa rạp chiếu
def sua_rap_chieu(request, id):
    rap_chieu = get_object_or_404(RapChieu, id=id)
    if request.method == 'POST':
        form = RapChieuForm(request.POST, instance=rap_chieu)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_rap_chieu')
    else:
        form = RapChieuForm(instance=rap_chieu)
    return render(request, 'base/sua_rap_chieu.html', {'form': form})

# View xóa rạp chiếu
def xoa_rap_chieu(request, id):
    rap_chieu = get_object_or_404(RapChieu, id=id)
    if request.method == 'POST':
        rap_chieu.delete()
        return redirect('danh_sach_rap_chieu')
    return render(request, 'base/xoa_rap_chieu.html', {'rap_chieu': rap_chieu})


from .models import XuatChieu
from .forms import XuatChieuForm

# View hiển thị danh sách xuất chiếu
def danh_sach_xuat_chieu(request):
    ds_xuat_chieu = XuatChieu.objects.all()
    return render(request, 'base/danh_sach_xuat_chieu.html', {'ds_xuat_chieu': ds_xuat_chieu})

# View thêm xuất chiếu
def them_xuat_chieu(request):
    if request.method == 'POST':
        form = XuatChieuForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_xuat_chieu')
    else:
        form = XuatChieuForm()
    return render(request, 'base/them_xuat_chieu.html', {'form': form})

# View sửa xuất chiếu
def sua_xuat_chieu(request, id):
    xuat_chieu = get_object_or_404(XuatChieu, id=id)
    if request.method == 'POST':
        form = XuatChieuForm(request.POST, instance=xuat_chieu)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_xuat_chieu')
    else:
        form = XuatChieuForm(instance=xuat_chieu)
    return render(request, 'base/sua_xuat_chieu.html', {'form': form})

# View xóa xuất chiếu
def xoa_xuat_chieu(request, id):
    xuat_chieu = get_object_or_404(XuatChieu, id=id)
    if request.method == 'POST':
        xuat_chieu.delete()
        return redirect('danh_sach_xuat_chieu')
    return render(request, 'base/xoa_xuat_chieu.html', {'xuat_chieu': xuat_chieu})



# from .models import Ve, Phim, XuatChieu, NguoiDung
# from .forms import VeForm

# # View hiển thị danh sách vé
# def danh_sach_ve(request):
#     ds_ve = Ve.objects.all()
#     return render(request, 'base/danh_sach_ve.html', {'ds_ve': ds_ve})

# # View thêm vé
# def them_ve(request):
#     if request.method == 'POST':
#         form = VeForm(request.POST)
#         if form.is_valid():
#             form.save()
#             return redirect('danh_sach_ve')
#     else:
#         form = VeForm()
#     return render(request, 'base/them_ve.html', {'form': form})

# # View sửa vé
# def sua_ve(request, id):
#     ve = get_object_or_404(Ve, id=id)
#     if request.method == 'POST':
#         form = VeForm(request.POST, instance=ve)
#         if form.is_valid():
#             form.save()
#             return redirect('danh_sach_ve')
#     else:
#         form = VeForm(instance=ve)
#     return render(request, 'base/sua_ve.html', {'form': form})

# # View xóa vé
# def xoa_ve(request, id):
#     ve = get_object_or_404(Ve, id=id)
#     if request.method == 'POST':
#         ve.delete()
#         return redirect('danh_sach_ve')
#     return render(request, 'base/xoa_ve.html', {'ve': ve})

#View Quản lý web bán vé
def quan_ly(request):
    return render(request, 'base/introduce.html')


from .models import Ve
from .forms import VeForm

# View hiển thị danh sách vé
def danh_sach_ve(request):
    ds_ve = Ve.objects.all()
    return render(request, 'base/danh_sach_ve.html', {'ds_ve': ds_ve})

# View thêm vé
def them_ve(request):
    if request.method == 'POST':
        form = VeForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_ve')
    else:
        form = VeForm()
    return render(request, 'base/them_ve.html', {'form': form})

# View sửa vé
def sua_ve(request, id):
    ve = get_object_or_404(Ve, id=id)
    if request.method == 'POST':
        form = VeForm(request.POST, instance=ve)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_ve')
    else:
        form = VeForm(instance=ve)
    return render(request, 'base/sua_ve.html', {'form': form})

# View xóa vé
def xoa_ve(request, id):
    ve = get_object_or_404(Ve, id=id)
    if request.method == 'POST':
        ve.delete()
        return redirect('danh_sach_ve')
    return render(request, 'base/xoa_ve.html', {'ve': ve})



from .models import GheNgoi
from .forms import GheNgoiForm

# View hiển thị danh sách ghế ngồi
def danh_sach_ghe_ngoi(request):
    ds_ghe = GheNgoi.objects.all()
    return render(request, 'base/danh_sach_ghe_ngoi.html', {'ds_ghe': ds_ghe})

# View thêm ghế ngồi
def them_ghe_ngoi(request):
    if request.method == 'POST':
        form = GheNgoiForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_ghe_ngoi')
    else:
        form = GheNgoiForm()
    return render(request, 'base/them_ghe_ngoi.html', {'form': form})

# View sửa ghế ngồi
def sua_ghe_ngoi(request, id):
    ghe = get_object_or_404(GheNgoi, id=id)
    if request.method == 'POST':
        form = GheNgoiForm(request.POST, instance=ghe)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_ghe_ngoi')
    else:
        form = GheNgoiForm(instance=ghe)
    return render(request, 'base/sua_ghe_ngoi.html', {'form': form})

# View xóa ghế ngồi
def xoa_ghe_ngoi(request, id):
    ghe = get_object_or_404(GheNgoi, id=id)
    if request.method == 'POST':
        ghe.delete()
        return redirect('danh_sach_ghe_ngoi')
    return render(request, 'base/xoa_ghe_ngoi.html', {'ghe': ghe})



from .models import Combo
from .forms import ComboForm

# Danh sách Combo
def danh_sach_combo(request):
    combos = Combo.objects.all()
    return render(request, 'base/danh_sach_combo.html', {'combos': combos})

# Thêm Combo
def them_combo(request):
    if request.method == 'POST':
        form = ComboForm(request.POST, request.FILES)  # Add request.FILES
        if form.is_valid():
            form.save()
            return redirect('danh_sach_combo')
    else:
        form = ComboForm()
    return render(request, 'base/them_combo.html', {'form': form})

# Sửa Combo
def sua_combo(request, id):
    combo = get_object_or_404(Combo, id=id)
    if request.method == 'POST':
        form = ComboForm(request.POST, request.FILES, instance=combo)  # Add request.FILES
        if form.is_valid():
            form.save()
            return redirect('danh_sach_combo')
    else:
        form = ComboForm(instance=combo)
    return render(request, 'base/sua_combo.html', {'form': form})


# Xóa Combo
def xoa_combo(request, id):
    combo = get_object_or_404(Combo, id=id)
    if request.method == 'POST':
        combo.delete()
        return redirect('danh_sach_combo')
    return render(request, 'base/xoa_combo.html', {'combo': combo})





from .models import BinhLuan
from .forms import BinhLuanForm

# Hiển thị danh sách bình luận
def danh_sach_binh_luan(request):
    binh_luans = BinhLuan.objects.all()
    return render(request, 'base/danh_sach_binh_luan.html', {'binh_luans': binh_luans})

# Thêm bình luận mới
def them_binh_luan(request):
    if request.method == 'POST':
        form = BinhLuanForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_binh_luan')
    else:
        form = BinhLuanForm()
    return render(request, 'base/them_binh_luan.html', {'form': form})

# Sửa bình luận
def sua_binh_luan(request, id):
    binh_luan = get_object_or_404(BinhLuan, id=id)
    if request.method == 'POST':
        form = BinhLuanForm(request.POST, instance=binh_luan)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_binh_luan')
    else:
        form = BinhLuanForm(instance=binh_luan)
    return render(request, 'base/sua_binh_luan.html', {'form': form})

# Xóa bình luận
def xoa_binh_luan(request, id):
    binh_luan = get_object_or_404(BinhLuan, id=id)
    if request.method == 'POST':
        binh_luan.delete()
        return redirect('danh_sach_binh_luan')
    return render(request, 'base/xoa_binh_luan.html', {'binh_luan': binh_luan})


def home(request):
    return render(request, 'base\headerfooter.html')  # Render a home page template
from django.shortcuts import render
from .models import Phim

def index(request):
    # Lấy 8 bộ phim đầu bảng
    top_movies = Phim.objects.all()[:8]  # Thay đổi lọc theo yêu cầu của bạn nếu cần
    phim_sap_chieu = Phim.objects.all().order_by('-id')[:8]  # Sắp xếp theo ID giảm dần để lấy phim mới nhất
    random_movies = Phim.objects.all().order_by('?')[:8]  # Lấy 8 phim ngẫu nhiên
    return render(request, 'base/index.html', {'top_movies': top_movies, 'phim_sap_chieu': phim_sap_chieu,'random_movies':random_movies})

from django.shortcuts import render, get_object_or_404
from django.utils import timezone
from .models import Phim, XuatChieu, RapChieu, DinhDangPhim

def film_detail(request, phim_id):
    # Lấy đối tượng phim dựa trên ID
    phim = get_object_or_404(Phim, id=phim_id)
    
    # Lấy ngày hôm nay
    today = timezone.now().date()
    
    # Lấy lịch chiếu của phim trong ngày hôm nay
    showtimes = XuatChieu.objects.filter(phim=phim, thoi_gian_chieu__date=today)
    
    # Nhóm lịch chiếu theo rạp và định dạng
    grouped_showtimes = {}
    for showtime in showtimes:
        # Lấy rạp chiếu và định dạng phim của lịch chiếu
        rap_chieu = showtime.rap_chieu
        dinh_dang = showtime.dinh_dang_phim
        
        # Khởi tạo rạp nếu chưa có trong dictionary
        if rap_chieu not in grouped_showtimes:
            grouped_showtimes[rap_chieu] = {}
        
        # Khởi tạo danh sách định dạng nếu chưa có trong rạp
        if dinh_dang not in grouped_showtimes[rap_chieu]:
            grouped_showtimes[rap_chieu][dinh_dang] = []
        
        # Thêm lịch chiếu vào danh sách tương ứng
        grouped_showtimes[rap_chieu][dinh_dang].append(showtime)
    
    context = {
        'phim': phim,
        'grouped_showtimes': grouped_showtimes,
        'today': today,
    }
    
    return render(request, 'base/film_detail.html', context)












# views.py
from django.shortcuts import render, redirect
from .forms import XuatChieuFormTuDong
from .models import XuatChieu, Phim, RapChieu, DinhDangPhim
from datetime import datetime, timedelta

def tao_xuat_chieu_tu_dong(request):
    # Các mốc thời gian cố định
    THOI_GIAN_CHOICES = [
        "11:00", "13:05", "14:10", "15:10", "15:40", "16:15",
        "17:15", "17:45", "18:20", "19:00", "19:20", "19:50",
        "20:10", "20:30", "21:05", "21:25", "21:55", "22:15",
        "22:35", "23:10"
    ]
    
    if request.method == 'POST':
        form = XuatChieuFormTuDong(request.POST)
        if form.is_valid():
            phim = form.cleaned_data['phim']
            rap_chieu = form.cleaned_data['rap_chieu']
            dinh_dang_phim = form.cleaned_data['dinh_dang_phim']
            ngay_chieu = form.cleaned_data['ngay_chieu']
            
            # Tạo các bản ghi suất chiếu với thời gian cố định
            for thoi_gian in THOI_GIAN_CHOICES:
                thoi_gian_chieu = datetime.strptime(f"{ngay_chieu} {thoi_gian}", '%Y-%m-%d %H:%M')
                XuatChieu.objects.create(
                    phim=phim,
                    rap_chieu=rap_chieu,
                    dinh_dang_phim=dinh_dang_phim,
                    thoi_gian_chieu=thoi_gian_chieu
                )
            
            return redirect('danh_sach_xuat_chieu')  # Chuyển hướng sau khi lưu thành công
    else:
        form = XuatChieuForm()
    
    return render(request, 'base/xuat_chieu_form.html', {'form': form})


# Trong views.py
from django.shortcuts import render, get_object_or_404
from .models import Phim, XuatChieu, GheNgoi, Ve

# views.py

def seat_selection(request, phim_id, xuat_chieu_id):
    # Lấy thông tin phim và xuất chiếu
    phim = get_object_or_404(Phim, id=phim_id)
    xuat_chieu = get_object_or_404(XuatChieu, id=xuat_chieu_id, phim=phim)

    # Lấy các ghế có sẵn cho xuất chiếu này
    seats = GheNgoi.objects.filter(rap_chieu=xuat_chieu.rap_chieu)
    
    # Kiểm tra các ghế đã được đặt hay chưa
    booked_seats = Ve.objects.filter(thoi_gian_chieu=xuat_chieu).values_list('ghe_ngoi__id', flat=True)
    # Ghế đã được đặt
    booked_seats = set(booked_seats)

    context = {
        'phim': phim,
        'xuat_chieu': xuat_chieu,
        'seats': seats,
        'booked_seats': booked_seats,  # Truyền danh sách ghế đã đặt
    }
    return render(request, 'seats/seat.html', context)




#SELECTCOMBODB
from django.shortcuts import render, get_object_or_404
from .models import Combo, Phim, XuatChieu, GheNgoi

def select_combo(request, phim_id, xuat_chieu_id, ghe_ngoi_ids):
    # Lấy thông tin phim và xuất chiếu
    phim = get_object_or_404(Phim, id=phim_id)
    xuat_chieu = get_object_or_404(XuatChieu, id=xuat_chieu_id)

    # Tách ghe_ngoi_ids thành danh sách các ID
    ghe_ngoi_ids_list = [int(id) for id in ghe_ngoi_ids.split(',')]
    ghe_ngoi_objects = GheNgoi.objects.filter(id__in=ghe_ngoi_ids_list)

    # Lấy danh sách các combo có sẵn
    combos = Combo.objects.all()

    # Cập nhật context và render trang tiếp theo
    context = {
        'phim': phim,
        'xuat_chieu': xuat_chieu,
        'ghe_ngoi': ghe_ngoi_objects,
        'combos': combos
    }

    return render(request, 'comboselect/select_combo.html', context)







# from django.shortcuts import render, redirect
# from django.contrib import messages
# from django.contrib.auth import login as auth_login, logout as auth_logout
# from django.contrib.auth.hashers import check_password
# from .forms import RegistrationForm, LoginForm
# from .models import NguoiDung

# def register_(request):
#     if request.method == 'POST':
#         form = RegistrationForm(request.POST)
#         if form.is_valid():
#             form.save()
#             messages.success(request, "Registration successful")
#             return redirect('login')
#         else:
#             messages.error(request, "Please correct the errors below")
#     else:
#         form = RegistrationForm()

#     return render(request, 'base/register.html', {'form': form})




# register
from .forms import UserForm
from django.contrib.auth.models import User
from .forms import RegisterForm, ProfileForm
from django.contrib.auth import logout
from django.contrib.auth import login as auth_login, logout as auth_logout
def register_view(request):
    if request.method == 'POST':
        form = NguoiDungForm(request.POST)
        
        if form.is_valid():
            username = form.cleaned_data['username']
            email = form.cleaned_data['email']
            password = form.cleaned_data['password']
            sdt = form.cleaned_data['sdt']
            gioi_tinh = form.cleaned_data['gioi_tinh']
            ngay_sinh = form.cleaned_data['ngay_sinh']

            user = NguoiDung.objects.create_user(
                username=username,
                email=email,
                password=password,
                sdt=sdt,
                gioi_tinh=gioi_tinh,
                ngay_sinh=ngay_sinh
            )

            messages.success(request, "Đăng ký thành công!")
            return redirect('login')
    else:
        form = NguoiDungForm()

    return render(request, 'user/register.html', {'form': form})


#login
from django.contrib import messages
from django.contrib.auth import authenticate, login

def login_view(request):
    if request.user.is_authenticated:
        return redirect('index')

    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')

        # Xác thực với NguoiDung model thay vì User
        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            messages.success(request, "Đăng nhập thành công!")
            return redirect('index')
        else:
            messages.error(request, 'Tên đăng nhập hoặc mật khẩu không đúng!')
            return redirect('login')

    return render(request, 'user/login.html')

# Trang hồ sơ người dùng
# @login_required
def profile_view(request):
    if request.method == 'POST':
        profile_form = ProfileForm(request.POST, instance=request.user)
        if profile_form.is_valid():
            profile_form.save()
            return redirect('profile')  # Cập nhật và quay lại trang profile
    else:
        profile_form = ProfileForm(instance=request.user)
    return render(request, 'base/profile.html', {'profile_form': profile_form})

# Trang cập nhật thông tin người dùng
from django.contrib.auth.decorators import login_required
@login_required(login_url='login')  
def updateUser(request):
    user = request.user  
    form = NguoiDungForm(instance=user)

    if request.method == 'POST':
        form = NguoiDungForm(request.POST, request.FILES, instance=user)
        if form.is_valid():
            form.save()
            messages.success(request, "Cập nhật thông tin thành công!")
            return redirect('profile') 

        else:
            messages.error(request, "Có lỗi xảy ra. Vui lòng kiểm tra lại thông tin.")
    
    context = {'form': form, 'user': user}
    return render(request, 'base/update-user.html', context)

# Trang cập nhật password
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth import update_session_auth_hash
@login_required(login_url='login')
def updatePassword(request):
    user = request.user 
    form = PasswordChangeForm(user=user)
    if request.method == 'POST':
        form = PasswordChangeForm(user=user, data=request.POST)
        if form.is_valid():
            form.save()
            update_session_auth_hash(request, form.user)
            messages.success(request, "Cập nhật mật khẩu thành công!")
            return redirect('profile')
        else:
            messages.error(request, "Xảy ra lỗi trong quá trình cập nhật")
    
    context = {'form': form}
    return render(request, 'base/password.html', context)


# Đăng xuất người dùng
def logout_view(request):
    logout(request)
    messages.success(request, "Đăng xuất thành công!")
    return redirect('index')

import qrcode
import os
from django.core.files.base import ContentFile
from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from io import BytesIO
from .models import Phim, XuatChieu, GheNgoi, Combo, NguoiDung, Ve




def check_out(request, phim_id, xuat_chieu_id, ghe_ngoi_ids, combo_ids):
    # Get objects based on IDs
    phim = get_object_or_404(Phim, id=phim_id)
    xuat_chieu = get_object_or_404(XuatChieu, id=xuat_chieu_id)
    ghe_ngoi = GheNgoi.objects.filter(id__in=ghe_ngoi_ids.split(','))
    combos = Combo.objects.filter(id__in=combo_ids.split(','))
    
    # Get the logged-in user
    user = request.user

    # Calculate ticket price based on selected seats
    gia_ve = phim.gia_ve * len(ghe_ngoi) + sum([ghe.gia_ve for ghe in ghe_ngoi])
    gia_combo = sum([combo.gia_combo for combo in combos])
    total = gia_ve + gia_combo

    if request.method == 'POST':
        link_face = request.FILES.get('face_image')
        
        # Generate a simple code for the ticket
        ma_qr_ve = f"{user.username}_{phim_id}_{xuat_chieu_id}_{ghe_ngoi_ids}"

        # Create the ticket (Ve) and save the code
        ve = Ve.objects.create(
            phim=phim,
            thoi_gian_chieu=xuat_chieu,
            rap=xuat_chieu.rap_chieu,
            user_mua_ve=user,
            link_face=link_face if link_face else 'face/default_face.jpg',
            ma_qr_ve=ma_qr_ve,  # Store the simple code
        )

        # Add selected seats and combos
        ve.ghe_ngoi.set(ghe_ngoi)
        ve.combo.set(combos)
        
        return redirect('ticket_success', ve_id=ve.id)

    return render(request, 'checkout/check_out.html', {
        'phim': phim,
        'xuat_chieu': xuat_chieu,
        'ghe_ngoi': ghe_ngoi,
        'combos': combos,
        'gia_ve': gia_ve,
        'gia_combo': gia_combo,
        'total': total,
    })





import io
import qrcode
import base64
from django.shortcuts import render, get_object_or_404
from .models import Ve

def generate_qr_code(ma_ve):
    # Tạo mã QR
    qr = qrcode.QRCode(version=1, error_correction=qrcode.constants.ERROR_CORRECT_L, box_size=10, border=4)
    qr.add_data(ma_ve)
    qr.make(fit=True)
    
    img = qr.make_image(fill='black', back_color='white')

    # Tạo đối tượng BytesIO để lưu ảnh trong bộ nhớ
    img_byte_arr = io.BytesIO()
    img.save(img_byte_arr, format='PNG')
    img_byte_arr.seek(0)

    # Mã hóa thành base64
    qr_code_base64 = base64.b64encode(img_byte_arr.getvalue()).decode('utf-8')

    # Trả về dữ liệu mã QR dưới dạng base64 để hiển thị
    return qr_code_base64

def ticket_success(request, ve_id):
    # Lấy đối tượng vé dựa trên ve_id
    ve = get_object_or_404(Ve, id=ve_id)

    # Tạo mã QR sử dụng trường ma_qr_ve
    qr_code_data = generate_qr_code(ve.ma_qr_ve)

    return render(request, 'base/ticket_success.html', {
        've': ve,
        'qr_code_data': qr_code_data,  # Truyền dữ liệu mã QR đến template
    })

#Contact
from django.contrib import messages
from .models import Contact
from .forms import ContactForm
def contact_view(request):
    if request.method == "POST":
        name = request.POST.get("name")
        email = request.POST.get("email")
        subject = request.POST.get("subject")
        message = request.POST.get("message")
        
        # Lưu thông tin vào database
        Contact.objects.create(name=name, email=email, subject=subject, message=message)
        
        # Gửi thông báo thành công
        messages.success(request, "Liên hệ của bạn đã được gửi!")
        return redirect("contact")

    return render(request, "contact/lien-he.html")

def contact_list(request):
    contacts = Contact.objects.all()
    return render(request, 'base/danh_sach_lien_he.html', {'contacts': contacts})

def contact_edit(request, pk):
    contact = get_object_or_404(Contact, pk=pk)
    if request.method == 'POST':
        form = ContactForm(request.POST, instance=contact)
        if form.is_valid():
            form.save()
            return redirect('danh_sach_lien_he')
    else:
        form = ContactForm(instance=contact)
    return render(request, 'base/sua_lien_he.html', {'form': form})

def contact_delete(request, id):
    contact = get_object_or_404(Contact, id=id)
    if request.method == 'POST':
        contact.delete()
        return redirect('danh_sach_lien_he')
    return render(request, 'base/xoa_lien_he.html', {'contact': contact})



# vourcher

# views.py
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.utils import timezone
from .models import Voucher, UserVoucher, NguoiDung
from .forms import VoucherForm

# Quản lý voucher
def manage_vouchers(request):
    # if not request.user.is_staff: 
    #     return redirect('index')

    vouchers = Voucher.objects.all()
    return render(request, 'vourcher/manage.html', {'vouchers': vouchers})

# Thêm voucher mới
def add_voucher(request):
    # if not request.user.is_staff:  
    #     return redirect('index')

    if request.method == 'POST':
        form = VoucherForm(request.POST)
        if form.is_valid():
            voucher = form.save(commit=False)
            voucher.save()  # Lưu voucher trước khi gán cho người dùng
            
            # Lấy tất cả người dùng để liên kết voucher với họ
            nguoi_dungs = NguoiDung.objects.all()
            for nguoidung in nguoi_dungs:
                UserVoucher.objects.create(nguoi_dung=nguoidung, voucher=voucher)

            messages.success(request, "Voucher đã được tạo và liên kết với tất cả người dùng!")
            return redirect('managevouchers')

    else:
        form = VoucherForm()

    return render(request, 'vourcher/addvourcher.html', {'form': form})

# Cấp voucher cho người dùng
# def assign_voucher_to_user(request, user_id):
#     # if not request.user.is_staff: 
#     #     return redirect('index')

#     nguoi_dung = NguoiDung.objects.get(id=user_id)
#     vouchers = Voucher.objects.filter(active=True)
#     if request.method == 'POST':
#         voucher_id = request.POST.get('voucher_id')
#         voucher = Voucher.objects.get(id=voucher_id)
        
#         # Kiểm tra điều kiện áp dụng voucher cho người dùng
#         if voucher.is_valid_for_user(nguoi_dung):
#             UserVoucher.objects.create(nguoi_dung=nguoi_dung, voucher=voucher)
#             return redirect('managevouchers')
#         else:
#             # Thông báo nếu không đủ điều kiện
#             return render(request, 'vourcher/assign.html', {'nguoi_dung': nguoi_dung, 'vouchers': vouchers, 'error': 'Không đủ điều kiện để áp dụng voucher này!'})

#     return render(request, 'vourcher/assign.html', {'nguoi_dung': nguoi_dung, 'vouchers': vouchers})



#analytic
# from flask import Flask, render_template, redirect, url_for, request, send_file
# import pandas as pd
# import os
# from datetime import datetime
# import matplotlib.pyplot as plt

# app = Flask(__name__)

# # Đường dẫn tới các tệp
# DATA_FILE = 'data.csv'
# VIEW_FILE = 'view_counts_data.xlsx'
# USER_DATA_FILE = 'users.csv'
# static_folder = 'static'

# # Biến toàn cục để đếm số lượt xem
# view_count = 0

# # Khởi tạo dữ liệu người dùng nếu file chưa tồn tại
# def initialize_user_data():
#     if not os.path.exists(USER_DATA_FILE):
#         df = pd.DataFrame(columns=['id', 'username', 'email', 'role'])
#         df.to_csv(USER_DATA_FILE, index=False)

# # Kiểm tra và tạo tệp data.csv nếu chưa tồn tại
# if not os.path.exists(DATA_FILE):
#     df = pd.DataFrame(columns=['Tháng', 'Doanh thu tháng', 'Phim', 'Lượt mua vé', 'Yêu thích', 'Không thích'])
#     df.to_csv(DATA_FILE, index=False)

# # Hàm lấy dữ liệu từ trang web (cần định nghĩa)
# def fetch_data():
#     pass  # Thêm mã lấy dữ liệu của bạn ở đây

# # Route để lấy dữ liệu và lưu vào CSV
# @app.route('/fetch-data')
# def fetch_data_route():
#     try:
#         fetch_data()
#         return redirect(url_for('index'))
#     except Exception as e:
#         return f"Lỗi khi lấy dữ liệu: {str(e)}"

# # Hàm lưu số lượt xem vào file Excel
# def save_view_count(count):
#     view_data = pd.DataFrame({
#         'Số lượt xem': [count],
#         'Thời gian': [datetime.now()]
#     })

#     try:
#         with pd.ExcelWriter(VIEW_FILE, mode='a', if_sheet_exists='overlay', engine='openpyxl') as writer:
#             startrow = writer.sheets['Sheet1'].max_row if 'Sheet1' in writer.sheets else 0
#             view_data.to_excel(writer, sheet_name='Sheet1', index=False, header=writer.sheets.get('Sheet1') is None, startrow=startrow)
#     except FileNotFoundError:
#         view_data.to_excel(VIEW_FILE, index=False)

# # Hàm tạo bảng thống kê từ dữ liệu
# def generate_statistics(df):
#     total_revenue = df['Doanh thu tháng'].sum()
#     total_tickets = df['Lượt mua vé'].sum()
#     total_movies = df['Phim'].nunique()
#     average_tickets_per_movie = total_tickets / total_movies if total_movies > 0 else 0

#     stats = {
#         'Tổng Doanh Thu': total_revenue,
#         'Tổng Lượt Mua Vé': total_tickets,
#         'Số Lượng Phim Phát Hành': total_movies,
#         'Trung Bình Lượt Mua Vé/Phim': average_tickets_per_movie
#     }

#     return stats

# # Hàm tạo biểu đồ yêu thích/không thích
# def create_pie_charts(df):
#     movies = df['Phim'].unique()
    
#     for i, movie in enumerate(movies):
#         film_data = df[df['Phim'] == movie]
#         likes = film_data['Yêu thích'].values[0]
#         dislikes = film_data['Không thích'].values[0]
        
#         plt.figure(figsize=(6, 6))
#         plt.pie([likes, dislikes], labels=['Yêu thích', 'Không thích'], autopct='%1.1f%%', startangle=90)
#         plt.title(f'Yêu thích / Không thích của phim {movie}')
#         plt.axis('equal')  # Đảm bảo hình tròn
#         plt.savefig(os.path.join(static_folder, f'pie_chart_{i}.png'))
#         plt.close()

# # Route để xuất dữ liệu sang file Excel
# @app.route('/export')
# def export_data():
#     df = pd.read_csv(DATA_FILE)
#     output_file = 'exported_data.xlsx'
#     df.to_excel(output_file, index=False)
#     return send_file(output_file, as_attachment=True)

# # Route cho trang nhập dữ liệu
# @app.route('/data-entry')
# def data_entry():
#     return render_template('data_entry.html')

# # Route xử lý việc thêm dữ liệu vào data.csv
# @app.route('/add-data', methods=['POST'])
# def add_data():
#     month = request.form['month']
#     revenue = request.form['revenue']
#     movie = request.form['movie']
#     ticket_count = request.form['ticket_count']
#     likes = request.form['likes']
#     dislikes = request.form['dislikes']
    
#     # Tạo DataFrame mới với dữ liệu đã nhập
#     new_data = pd.DataFrame([[month, revenue, movie, ticket_count, likes, dislikes]],
#                             columns=['Tháng', 'Doanh thu tháng', 'Phim', 'Lượt mua vé', 'Yêu thích', 'Không thích'])
    
#     # Lưu dữ liệu vào data.csv
#     new_data.to_csv(DATA_FILE, mode='a', header=False, index=False)

#     return redirect(url_for('data_entry'))

# # Route trang chính
# @app.route('/')
# def index():
#     global view_count
#     view_count += 1
#     save_view_count(view_count)

#     if not os.path.exists(DATA_FILE):
#         return "Không tìm thấy file 'data.csv'. Hãy đảm bảo tệp này có sẵn trong thư mục hiện tại."

#     df = pd.read_csv(DATA_FILE)
#     df.columns = df.columns.str.strip()

#     # Thực hiện tìm kiếm nếu có
#     search_query = request.args.get('search')
#     if search_query:
#         df = df[df['Phim'].str.contains(search_query, case=False)]

#     # Tạo bảng thống kê
#     statistics = generate_statistics(df)

#     # Chuyển đổi dữ liệu để hiển thị
#     data_html = df.to_html(classes='table table-striped', index=False)

#     # Dữ liệu cho các biểu đồ
#     revenue_chart = 'revenue_chart.png'
#     ticket_chart = 'ticket_chart.png'
#     pie_charts = [f'pie_chart_{i}.png' for i in range(len(df['Phim'].unique()))]

#     create_pie_charts(df)

#     return render_template('index.html', 
#                            view_count=view_count, 
#                            data_html=data_html,
#                            statistics=statistics,
#                            revenue_chart=revenue_chart,
#                            ticket_chart=ticket_chart,
#                            pie_charts=pie_charts)

# # Kiểm tra nếu thư mục static tồn tại, nếu không, tạo thư mục này
# if not os.path.exists(static_folder):
#     os.makedirs(static_folder)

# # Chạy ứng dụng
# if __name__ == '__main__':
#     initialize_user_data()
#     app.run(debug=True)
