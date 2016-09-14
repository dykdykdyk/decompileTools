.class public Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerFactory;
.super Ljava/lang/Object;
.source "BootloaderScannerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScanner()Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScanner;
    .locals 2

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 39
    new-instance v0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;-><init>()V

    .line 40
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;

    invoke-direct {v0}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;-><init>()V

    goto :goto_0
.end method
