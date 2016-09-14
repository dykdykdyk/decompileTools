.class Lno/nordicsemi/android/dfu/DfuBaseService$3;
.super Landroid/content/BroadcastReceiver;
.source "DfuBaseService.java"


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/DfuBaseService;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$3;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 701
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 702
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$3;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;
    invoke-static {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$000(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 707
    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 710
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$3;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 v1, 0x1

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mRequestCompleted:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$602(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 713
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$3;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 714
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$3;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 715
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
