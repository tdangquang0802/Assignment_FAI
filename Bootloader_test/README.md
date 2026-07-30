# STM32F407 Discovery - Boot Mode Selector (Huong 1)

Firmware dua vao trang thai nut nhan luc khoi
dong, sau do chay mai trong mode da chon.

## Phan cung

- Board: STM32F407G-DISC1 (STM32F4-Discovery)
- Nut nhan: User Button B1 - **PD0** (`BUTTON_Pin` / `BUTTON_GPIO_Port` trong
  `main.h`), active-HIGH (nhan = muc HIGH, nho pull-down ngoai co san tren
  board), `Pull = GPIO_NOPULL`.
- UART debug: USART2 - TX = PA2, 115200 8N1 (qua ST-Link Virtual COM Port).
- LED:
  - LD5 (do, PD14) - nhay 500ms khi o Mode 1 (nut khong duoc nhan luc boot)
  - LD4 (xanh la, PD12) - nhay 150ms khi o Mode 2 (nut duoc giu luc boot)

## Luong hoat dong

```
main()
 ├─ HAL_Init()
 ├─ SystemClock_Config()
 ├─ MX_GPIO_Init()
 ├─ MX_USART2_UART_Init()
 └─ bootloader_selector()      <-- doc nut 1 lan, roi chay mai
     ├─ Nut KHONG nhan -> main_boot_mode_1()  (LD5 nhay 500ms, vo han)
     └─ Nut DANG nhan  -> main_boot_mode_2()  (LD4 nhay 150ms, vo han)
```

`bootloader_selector()` chi doc trang thai nut **dung 1 lan**, ngay sau khi
he thong da duoc cau hinh xong (clock/GPIO/UART). Muon doi mode phai giu nut
roi nhan RESET (hoac cap nguon lai) - nhan nut sau khi board da chay vao 1
mode se khong co tac dung, day la thiet ke co y (khong phai bug).

## Cau truc file

```
.
├── Core/
│   └── Src/
│       └── main.c        <-- copy file main.c dinh kem vao day, de vao dung
│                              vi tri trong project STM32CubeIDE hien co cua ban
├── .gitignore
└── README.md
```


## Build & nap

1. Mo project bang STM32CubeIDE.
2. Dam bao khong con dong `bl bootloader_selector` nao trong file startup
   (`Core/Startup/startup_stm32f407vgtx.s`) - huong 1 khong can chen goi ham
   tu assembly, `bootloader_selector()` da duoc goi trong `main()`.
3. Build (Ctrl+B), nap qua ST-Link (F11 / Run).
4. Mo terminal UART (115200 8N1) tren cong VCP cua ST-Link de xem log debug.

