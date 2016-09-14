.class Lno/nordicsemi/android/dfu/DfuBaseService$2;
.super Landroid/content/BroadcastReceiver;
.source "DfuBaseService.java"


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/DfuBaseService;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 670
    const-string v0, "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 672
    packed-switch v0, :pswitch_data_0

    .line 694
    :goto_0
    return-void

    .line 674
    :pswitch_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z
    invoke-static {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$402(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    goto :goto_0

    .line 677
    :pswitch_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$402(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 680
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 681
    :try_start_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 682
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 685
    :pswitch_2
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mPaused:Z
    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$402(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 686
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # setter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mAborted:Z
    invoke-static {v0, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$502(Lno/nordicsemi/android/dfu/DfuBaseService;Z)Z

    .line 689
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 690
    :try_start_1
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    # getter for: Lno/nordicsemi/android/dfu/DfuBaseService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
