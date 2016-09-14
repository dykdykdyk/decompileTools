.class Lno/nordicsemi/android/dfu/DfuBaseService$1;
.super Landroid/content/BroadcastReceiver;
.source "DfuBaseService.java"


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/DfuBaseService;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$1;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 651
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 652
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$1;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mDeviceAddress:Ljava/lang/String;
    invoke-static {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$000(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 657
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$1;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Action received: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lno/nordicsemi/android/dfu/DfuBaseService;->logi(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$1;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 v1, 0x0

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$202(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    .line 661
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$1;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$1;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 663
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
