.class Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;
.super Ljava/lang/Object;
.source "BootloaderScannerLollipop.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    # getter for: Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->mFound:Z
    invoke-static {v0}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->access$000(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_1
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    const/4 v1, 0x0

    # setter for: Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->mBootloaderAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->access$102(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    const/4 v1, 0x1

    # setter for: Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->mFound:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->access$002(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;Z)Z

    .line 72
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    # getter for: Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->access$200(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 73
    :try_start_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    # getter for: Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->access$200(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method