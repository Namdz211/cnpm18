USE [QLBanVeXe];
GO

-- ============================================================
-- Thêm 50 đơn đặt vé mẫu để xem thống kê doanh thu
-- TripID sử dụng: 1,2,3,4,5,6,7,8,9,10,11,12,14,18,23,25,26
-- PaymentStatus = 'Paid'  →  được tính doanh thu
-- BookingDate rải đều từ 01/04/2026 đến 23/06/2026
-- ============================================================

SET IDENTITY_INSERT [dbo].[Bookings] OFF;

INSERT INTO [dbo].[Bookings]
  ([TripID],[UserID],[CustomerName],[CustomerPhone],[CustomerEmail],
   [TotalSeats],[TotalPrice],[PaymentMethod],[PaymentStatus],
   [BookingDate],[PickupStopID],[DropoffStopID],
   [CancelledAt],[CancelReason],[RefundAmount],[PromotionID],[DiscountAmount],[BookingStatus])
VALUES
-- 01. Trip 1 HCM→ĐàLạt 320k
(1, 1, N'Nguyễn Văn An', N'0901000101', N'an.nv@mail.com',
 2, 640000, N'VNPay', 1,
 '2026-04-02 07:30:00', 1, 3, NULL, NULL, NULL, NULL, 0, 1),

-- 02. Trip 2 HCM→NhaTrang 360k
(2, 2, N'Trần Thị Bích', N'0912000202', N'bich.tt@mail.com',
 1, 360000, N'Momo', 1,
 '2026-04-03 08:00:00', 4, 6, NULL, NULL, NULL, NULL, 0, 1),

-- 03. Trip 3 HCM→CầnThơ 180k
(3, 4, N'Lê Hoàng Cảnh', N'0933000303', N'canh.lh@mail.com',
 3, 540000, N'BankTransfer', 1,
 '2026-04-05 06:00:00', 7, 9, NULL, NULL, NULL, NULL, 0, 1),

-- 04. Trip 6 HàNội→ĐàNẵng 520k
(6, 5, N'Phạm Quỳnh Dao', N'0944000404', N'dao.pq@mail.com',
 2, 1040000, N'VNPay', 1,
 '2026-04-06 09:00:00', 16, 18, NULL, NULL, NULL, NULL, 0, 1),

-- 05. Trip 7 HàNội→SaPa 380k
(7, 6, N'Đỗ Minh Đức', N'0955000505', N'duc.dm@mail.com',
 1, 380000, N'Momo', 1,
 '2026-04-07 14:00:00', 19, 21, NULL, NULL, NULL, NULL, 0, 1),

-- 06. Trip 9 HCM→PhanThiết 220k
(9, 7, N'Vũ Thị Ế', N'0966000606', N'e.vt@mail.com',
 2, 440000, N'VNPay', 1,
 '2026-04-08 07:00:00', 25, 27, NULL, NULL, NULL, NULL, 0, 1),

-- 07. Trip 10 ĐàNẵng→Huế 150k
(10, 8, N'Hoàng Văn Phong', N'0977000707', N'phong.hv@mail.com',
 3, 450000, N'Cash', 1,
 '2026-04-09 06:30:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 08. Trip 1 HCM→ĐàLạt 320k
(1, 9, N'Mai Thị Giang', N'0988000808', N'giang.mt@mail.com',
 1, 320000, N'VNPay', 1,
 '2026-04-10 08:00:00', 1, 3, NULL, NULL, NULL, NULL, 0, 1),

-- 09. Trip 5 HàNội→HảiPhòng 120k
(5, 10, N'Bùi Quốc Hùng', N'0999000909', N'hung.bq@mail.com',
 4, 480000, N'Momo', 1,
 '2026-04-11 07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 10. Trip 2 HCM→NhaTrang 360k
(2, 11, N'Ngô Thị Khánh', N'0901001010', N'khanh.nt@mail.com',
 2, 720000, N'VNPay', 1,
 '2026-04-12 19:00:00', 4, 6, NULL, NULL, NULL, NULL, 0, 1),

-- 11. Trip 11 Vinh→HàNội 300k
(11, 12, N'Lý Văn Long', N'0912001111', N'long.lv@mail.com',
 1, 300000, N'BankTransfer', 1,
 '2026-04-13 05:30:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 12. Trip 6 HàNội→ĐàNẵng 520k
(6, 13, N'Đinh Thị Mai', N'0933001212', N'mai.dt@mail.com',
 3, 1560000, N'VNPay', 1,
 '2026-04-14 20:00:00', 16, 18, NULL, NULL, NULL, NULL, 0, 1),

-- 13. Trip 4 ĐàLạt→HCM 320k
(4, 16, N'Cao Văn Nam', N'0944001313', N'nam.cv@mail.com',
 2, 640000, N'Momo', 1,
 '2026-04-16 07:00:00', 10, 12, NULL, NULL, NULL, NULL, 0, 1),

-- 14. Trip 12 ĐàNẵng→HàNội 300k (dài)
(12, 1, N'Trịnh Thị Oanh', N'0955001414', N'oanh.tt@mail.com',
 1, 300000, N'VNPay', 1,
 '2026-04-17 06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 15. Trip 7 HàNội→SaPa 380k
(7, 2, N'Phan Văn Phúc', N'0966001515', N'phuc.pv@mail.com',
 2, 760000, N'BankTransfer', 1,
 '2026-04-18 19:30:00', 19, 21, NULL, NULL, NULL, NULL, 0, 1),

-- 16. Trip 9 HCM→PhanThiết 220k
(9, 4, N'Lê Thị Quỳnh', N'0977001616', N'quynh.lt@mail.com',
 3, 660000, N'VNPay', 1,
 '2026-04-20 07:30:00', 25, 27, NULL, NULL, NULL, NULL, 0, 1),

-- 17. Trip 3 HCM→CầnThơ 180k
(3, 5, N'Vũ Minh Sang', N'0988001717', N'sang.vm@mail.com',
 1, 180000, N'Cash', 1,
 '2026-04-22 06:00:00', 7, 9, NULL, NULL, NULL, NULL, 0, 1),

-- 18. Trip 18 ĐàNẵng→NhaTrang 200k
(18, 6, N'Hoàng Thị Tâm', N'0999001818', N'tam.ht@mail.com',
 2, 400000, N'Momo', 1,
 '2026-04-24 08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 19. Trip 1 HCM→ĐàLạt 320k
(1, 7, N'Đặng Văn Út', N'0901001919', N'ut.dv@mail.com',
 4, 1280000, N'VNPay', 1,
 '2026-04-26 07:00:00', 1, 3, NULL, NULL, NULL, NULL, 0, 1),

-- 20. Trip 14 HàNội→HảiPhòng 300k
(14, 8, N'Bùi Thị Vân', N'0912002020', N'van.bt@mail.com',
 1, 300000, N'BankTransfer', 1,
 '2026-04-28 06:30:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 21. Trip 6 HàNội→ĐàNẵng 520k
(6, 9, N'Trần Quốc Việt', N'0933002121', N'viet.tq@mail.com',
 2, 1040000, N'VNPay', 1,
 '2026-05-01 20:00:00', 16, 18, NULL, NULL, NULL, NULL, 0, 1),

-- 22. Trip 2 HCM→NhaTrang 360k
(2, 10, N'Nguyễn Thị Xuân', N'0944002222', N'xuan.nt@mail.com',
 3, 1080000, N'Momo', 1,
 '2026-05-03 19:00:00', 4, 6, NULL, NULL, NULL, NULL, 0, 1),

-- 23. Trip 11 Vinh→HàNội 300k
(11, 11, N'Phạm Văn Yên', N'0955002323', N'yen.pv@mail.com',
 1, 300000, N'VNPay', 1,
 '2026-05-05 05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 24. Trip 5 HàNội→HảiPhòng 120k
(5, 12, N'Đỗ Thị Ánh', N'0966002424', N'anh.dt@mail.com',
 2, 240000, N'Cash', 1,
 '2026-05-06 07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 25. Trip 7 HàNội→SaPa 380k
(7, 13, N'Lê Quang Bình', N'0977002525', N'binh.lq@mail.com',
 3, 1140000, N'VNPay', 1,
 '2026-05-08 19:00:00', 19, 21, NULL, NULL, NULL, NULL, 0, 1),

-- 26. Trip 4 ĐàLạt→HCM 320k
(4, 16, N'Ngô Thị Cam', N'0988002626', N'cam.nt@mail.com',
 2, 640000, N'BankTransfer', 1,
 '2026-05-10 07:30:00', 10, 12, NULL, NULL, NULL, NULL, 0, 1),

-- 27. Trip 23 ĐàNẵng→NhaTrang 200k
(23, 1, N'Vũ Văn Dũng', N'0999002727', N'dung.vv@mail.com',
 1, 200000, N'Momo', 1,
 '2026-05-12 08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 28. Trip 9 HCM→PhanThiết 220k
(9, 2, N'Hoàng Thị Ê', N'0901002828', N'e.ht@mail.com',
 4, 880000, N'VNPay', 1,
 '2026-05-14 07:00:00', 25, 27, NULL, NULL, NULL, NULL, 0, 1),

-- 29. Trip 1 HCM→ĐàLạt 320k
(1, 4, N'Phan Văn Giàu', N'0912002929', N'giau.pv@mail.com',
 2, 640000, N'Cash', 1,
 '2026-05-16 07:00:00', 1, 3, NULL, NULL, NULL, NULL, 0, 1),

-- 30. Trip 6 HàNội→ĐàNẵng 520k
(6, 5, N'Lý Thị Hoa', N'0933003030', N'hoa.lt@mail.com',
 1, 520000, N'VNPay', 1,
 '2026-05-18 21:00:00', 16, 18, NULL, NULL, NULL, NULL, 0, 1),

-- 31. Trip 2 HCM→NhaTrang 360k
(2, 6, N'Đinh Văn Ích', N'0944003131', N'ich.dv@mail.com',
 3, 1080000, N'Momo', 1,
 '2026-05-19 19:30:00', 4, 6, NULL, NULL, NULL, NULL, 0, 1),

-- 32. Trip 10 ĐàNẵng→Huế 150k
(10, 7, N'Trịnh Thị Kim', N'0955003232', N'kim.tt@mail.com',
 2, 300000, N'BankTransfer', 1,
 '2026-05-20 06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 33. Trip 14 HàNội→HảiPhòng 300k
(14, 8, N'Cao Văn Lâm', N'0966003333', N'lam.cv@mail.com',
 1, 300000, N'VNPay', 1,
 '2026-05-21 07:30:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 34. Trip 18 ĐàNẵng→NhaTrang 200k
(18, 9, N'Bùi Thị Mận', N'0977003434', N'man.bt@mail.com',
 4, 800000, N'Cash', 1,
 '2026-05-22 08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 35. Trip 7 HàNội→SaPa 380k
(7, 10, N'Phạm Quốc Nghi', N'0988003535', N'nghi.pq@mail.com',
 2, 760000, N'VNPay', 1,
 '2026-05-24 18:30:00', 19, 21, NULL, NULL, NULL, NULL, 0, 1),

-- 36. Trip 3 HCM→CầnThơ 180k
(3, 11, N'Vũ Thị Ổn', N'0999003636', N'on.vt@mail.com',
 3, 540000, N'Momo', 1,
 '2026-05-25 06:00:00', 7, 9, NULL, NULL, NULL, NULL, 0, 1),

-- 37. Trip 1 HCM→ĐàLạt 320k
(1, 12, N'Đỗ Văn Phát', N'0901003737', N'phat.dv@mail.com',
 1, 320000, N'BankTransfer', 1,
 '2026-05-27 07:00:00', 1, 3, NULL, NULL, NULL, NULL, 0, 1),

-- 38. Trip 5 HàNội→HảiPhòng 120k
(5, 13, N'Nguyễn Thị Quế', N'0912003838', N'que.nt@mail.com',
 2, 240000, N'VNPay', 1,
 '2026-05-28 06:30:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 39. Trip 11 Vinh→HàNội 300k
(11, 16, N'Trần Văn Sáng', N'0933003939', N'sang.tv@mail.com',
 4, 1200000, N'Cash', 1,
 '2026-05-29 05:30:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 40. Trip 6 HàNội→ĐàNẵng 520k
(6, 1, N'Lê Thị Thủy', N'0944004040', N'thuy.lt@mail.com',
 2, 1040000, N'VNPay', 1,
 '2026-06-01 20:00:00', 16, 18, NULL, NULL, NULL, NULL, 0, 1),

-- 41. Trip 2 HCM→NhaTrang 360k
(2, 2, N'Hoàng Minh Uyên', N'0955004141', N'uyen.hm@mail.com',
 3, 1080000, N'Momo', 1,
 '2026-06-03 19:00:00', 4, 6, NULL, NULL, NULL, NULL, 0, 1),

-- 42. Trip 4 ĐàLạt→HCM 320k
(4, 4, N'Đinh Văn Vĩnh', N'0966004242', N'vinh.dv@mail.com',
 1, 320000, N'BankTransfer', 1,
 '2026-06-05 07:00:00', 10, 12, NULL, NULL, NULL, NULL, 0, 1),

-- 43. Trip 9 HCM→PhanThiết 220k
(9, 5, N'Bùi Thị Xuân', N'0977004343', N'xuan.bt@mail.com',
 2, 440000, N'VNPay', 1,
 '2026-06-07 08:00:00', 25, 27, NULL, NULL, NULL, NULL, 0, 1),

-- 44. Trip 10 ĐàNẵng→Huế 150k
(10, 6, N'Vũ Quốc Yên', N'0988004444', N'yen.vq@mail.com',
 3, 450000, N'Cash', 1,
 '2026-06-08 06:30:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 45. Trip 7 HàNội→SaPa 380k
(7, 7, N'Ngô Thị An Bình', N'0999004545', N'anbinh.nt@mail.com',
 2, 760000, N'Momo', 1,
 '2026-06-10 18:00:00', 19, 21, NULL, NULL, NULL, NULL, 0, 1),

-- 46. Trip 1 HCM→ĐàLạt 320k
(1, 8, N'Phạm Công Danh', N'0901004646', N'danh.pc@mail.com',
 4, 1280000, N'VNPay', 1,
 '2026-06-12 07:00:00', 1, 3, NULL, NULL, NULL, NULL, 0, 1),

-- 47. Trip 23 ĐàNẵng→NhaTrang 200k
(23, 9, N'Trần Thị Ê Hoa', N'0912004747', N'ehoa.tt@mail.com',
 1, 200000, N'BankTransfer', 1,
 '2026-06-14 08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 48. Trip 18 ĐàNẵng→NhaTrang 200k
(18, 10, N'Lê Văn Phú', N'0933004848', N'phu.lv@mail.com',
 3, 600000, N'VNPay', 1,
 '2026-06-16 09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),

-- 49. Trip 6 HàNội→ĐàNẵng 520k
(6, 11, N'Nguyễn Thị Giao', N'0944004949', N'giao.nt@mail.com',
 2, 1040000, N'Momo', 1,
 '2026-06-18 20:30:00', 16, 18, NULL, NULL, NULL, NULL, 0, 1),

-- 50. Trip 11 Vinh→HàNội 300k
(11, 12, N'Đỗ Quang Hào', N'0955005050', N'hao.dq@mail.com',
 3, 900000, N'VNPay', 1,
 '2026-06-20 05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);

GO

-- Xác nhận kết quả
SELECT COUNT(*) AS TotalBookings FROM Bookings;
SELECT COUNT(*) AS PaidBookings FROM Bookings WHERE PaymentStatus = 1;
GO
