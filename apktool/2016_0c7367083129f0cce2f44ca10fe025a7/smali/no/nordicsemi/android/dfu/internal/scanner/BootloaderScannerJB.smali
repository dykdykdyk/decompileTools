.class public Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;
.super Ljava/lang/Object;
.source "BootloaderScannerJB.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
.implements Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScanner;


# instance fields
.field private mBootloaderAddress:Ljava/lang/String;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceAddressIncremented:Ljava/lang/String;

.field private mFound:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mFound:Z

    return v0
.end method

.method static synthetic access$002(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mFound:Z

    return p1
.end method

.method static synthetic access$102(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mDeviceAddressIncremented:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mFound:Z

    .line 98
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v1

    .line 102
    :cond_1
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public searchFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v1, 0xf

    const/4 v5, 0x0

    .line 41
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45
    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mDeviceAddress:Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mDeviceAddressIncremented:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    .line 48
    iput-boolean v5, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mFound:Z

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB$1;

    invoke-direct {v1, p0}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB$1;-><init>(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;)V

    const-string v2, "Scanner timer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 74
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 77
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mFound:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 85
    :goto_1
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 86
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    return-object v0

    .line 80
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
