.class public Lcom/nut/blehunter/ble/BLEService;
.super Landroid/app/Service;
.source "BLEService.java"

# interfaces
.implements Lcom/nut/blehunter/ble/ab;
.implements Lcom/nut/blehunter/ble/ad;
.implements Lcom/nut/blehunter/ble/p;
.implements Lcom/nut/blehunter/ble/t;
.implements Lcom/nut/blehunter/ble/x;


# instance fields
.field a:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/ble/r;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/bluetooth/BluetoothAdapter;

.field e:Lcom/nut/blehunter/ble/r;

.field f:Lcom/nut/blehunter/ble/m;

.field g:I

.field h:Z

.field i:I

.field j:Ljava/util/concurrent/ScheduledExecutorService;

.field k:Ljava/util/concurrent/ScheduledFuture;

.field private l:Lcom/nut/blehunter/ble/l;

.field private m:Landroid/os/Messenger;

.field private n:Lcom/nut/blehunter/ble/n;

.field private o:Lcom/nut/blehunter/ble/ae;

.field private p:Ljava/util/concurrent/ScheduledFuture;

.field private final q:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    .line 74
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->b:Landroid/support/v4/util/SimpleArrayMap;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->c:Ljava/util/List;

    .line 91
    iput v1, p0, Lcom/nut/blehunter/ble/BLEService;->g:I

    .line 93
    iput-boolean v1, p0, Lcom/nut/blehunter/ble/BLEService;->h:Z

    .line 95
    iput v1, p0, Lcom/nut/blehunter/ble/BLEService;->i:I

    .line 99
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 106
    new-instance v0, Lcom/nut/blehunter/ble/e;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ble/e;-><init>(Lcom/nut/blehunter/ble/BLEService;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->q:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 852
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ble/BLEService;)Lcom/nut/blehunter/ble/l;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->l:Lcom/nut/blehunter/ble/l;

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ble/BLEService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ble/BLEService;Lcom/nut/blehunter/ble/r;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ble/BLEService;->e(Lcom/nut/blehunter/ble/r;)V

    return-void
.end method

.method private static a(Lcom/nut/blehunter/entity/Nut;Lcom/nut/blehunter/ble/r;I)V
    .locals 2

    .prologue
    .line 961
    if-eqz p0, :cond_3

    iget v0, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-eq v0, p2, :cond_3

    .line 962
    iput p2, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 22259
    iget v0, p1, Lcom/nut/blehunter/ble/r;->p:I

    .line 963
    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    .line 23243
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->i:Ljava/lang/String;

    .line 964
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24243
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->i:Ljava/lang/String;

    .line 965
    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->w:Ljava/lang/String;

    .line 24247
    :cond_0
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->j:Ljava/lang/String;

    .line 967
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25247
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->j:Ljava/lang/String;

    .line 968
    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    .line 25251
    :cond_1
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->k:Ljava/lang/String;

    .line 970
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 26251
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->k:Ljava/lang/String;

    .line 971
    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->x:Ljava/lang/String;

    .line 974
    :cond_2
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 976
    :cond_3
    return-void
.end method

.method private static a(Landroid/os/Messenger;Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1083
    const-string v2, "service send message %s"

    new-array v3, v0, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1086
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :goto_0
    return v0

    .line 1087
    :catch_0
    move-exception v2

    .line 1088
    const-string v3, "send message to client exception %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1089
    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ble/BLEService;)V
    .locals 1

    .prologue
    .line 46
    .line 32138
    const/4 v0, 0x2

    iput v0, p0, Lcom/nut/blehunter/ble/BLEService;->g:I

    .line 46
    return-void
.end method

.method static c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;
    .locals 4

    .prologue
    .line 1060
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1061
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1062
    if-eqz p0, :cond_0

    .line 31309
    iget-object v2, p0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 1063
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1065
    const-string v3, "device_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1068
    return-object v0
.end method

.method static synthetic c(Lcom/nut/blehunter/ble/BLEService;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method static synthetic d(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/nut/blehunter/ble/BLEService;)Lcom/nut/blehunter/ble/r;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    return-object v0
.end method

.method static synthetic e(Lcom/nut/blehunter/ble/BLEService;)Lcom/nut/blehunter/ble/ae;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->o:Lcom/nut/blehunter/ble/ae;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->p:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 568
    :cond_0
    return-void
.end method

.method private e(Lcom/nut/blehunter/ble/r;)V
    .locals 7

    .prologue
    .line 979
    new-instance v0, Lcom/nut/blehunter/ble/j;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/ble/j;-><init>(Lcom/nut/blehunter/ble/BLEService;Lcom/nut/blehunter/ble/r;)V

    .line 26736
    iput-object v0, p1, Lcom/nut/blehunter/ble/r;->c:Lcom/nut/blehunter/ble/y;

    .line 27708
    iget v0, p1, Lcom/nut/blehunter/ble/r;->m:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_2

    .line 27709
    :cond_0
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    iget v0, p1, Lcom/nut/blehunter/ble/r;->m:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 27710
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 27712
    :cond_1
    :goto_0
    return-void

    .line 27714
    :cond_2
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->x:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p1, Lcom/nut/blehunter/ble/r;->g:Lcom/nut/blehunter/ble/z;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x9c4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p1, Lcom/nut/blehunter/ble/r;->h:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 600
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ble/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 602
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 603
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 733
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->i()Ljava/util/List;

    move-result-object v0

    .line 734
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 756
    :cond_0
    return-void

    .line 738
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/nut/blehunter/entity/Nut;

    .line 739
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nut/blehunter/d/q;->b(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 741
    new-instance v0, Lcom/nut/blehunter/ble/r;

    iget v5, v6, Lcom/nut/blehunter/entity/Nut;->p:I

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/ble/r;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;ZLcom/nut/blehunter/ble/t;I)V

    .line 8333
    iput-boolean v3, v0, Lcom/nut/blehunter/ble/r;->q:Z

    .line 744
    iget-object v1, p0, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v4, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ble/BLEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 746
    const/4 v4, 0x7

    invoke-virtual {v1, v2, v4}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    .line 747
    const-string v2, "init Controller nutStatus=%s, deviceStatus=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v6, Lcom/nut/blehunter/entity/Nut;->K:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    if-nez v1, :cond_2

    iget v0, v6, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v0, v3, :cond_2

    .line 752
    iput v8, v6, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 753
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Z)V

    .line 559
    invoke-direct {p0}, Lcom/nut/blehunter/ble/BLEService;->e()V

    .line 560
    invoke-virtual {p0}, Lcom/nut/blehunter/ble/BLEService;->b()V

    .line 561
    return-void
.end method

.method final a(I)V
    .locals 5

    .prologue
    .line 584
    const-string v0, "start scan period is %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    invoke-direct {p0}, Lcom/nut/blehunter/ble/BLEService;->e()V

    .line 586
    invoke-virtual {p0}, Lcom/nut/blehunter/ble/BLEService;->b()V

    .line 587
    invoke-direct {p0}, Lcom/nut/blehunter/ble/BLEService;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 589
    iget-object v2, p0, Lcom/nut/blehunter/ble/BLEService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/nut/blehunter/ble/BLEService;->n:Lcom/nut/blehunter/ble/n;

    if-nez p1, :cond_2

    const-wide/16 v0, 0x2ee0

    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 594
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/nut/blehunter/ble/BLEService;->q:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 597
    :cond_1
    return-void

    .line 589
    :cond_2
    int-to-long v0, p1

    goto :goto_0
.end method

.method final a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 1072
    const-string v0, "client count is %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nut/blehunter/ble/BLEService;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 1075
    invoke-static {v0, p1}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Messenger;Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1076
    iget-object v2, p0, Lcom/nut/blehunter/ble/BLEService;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1073
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1080
    :cond_1
    return-void
.end method

.method final a(Lcom/nut/blehunter/ble/r;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 465
    if-eqz p1, :cond_0

    .line 1309
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 465
    if-nez v0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const-string v0, "connect device %s current state is %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2309
    iget-object v3, p1, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 468
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/nut/blehunter/ble/BLEService;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    iget v0, p0, Lcom/nut/blehunter/ble/BLEService;->g:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    invoke-virtual {p1, v0}, Lcom/nut/blehunter/ble/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3138
    :cond_2
    iput v4, p0, Lcom/nut/blehunter/ble/BLEService;->g:I

    .line 474
    iget v0, p0, Lcom/nut/blehunter/ble/BLEService;->i:I

    if-nez v0, :cond_3

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p1, p0, p0, v0}, Lcom/nut/blehunter/ble/r;->a(Lcom/nut/blehunter/ble/p;Lcom/nut/blehunter/ble/ad;Lcom/nut/blehunter/ble/ai;)V

    goto :goto_0

    .line 476
    :cond_3
    iget v0, p0, Lcom/nut/blehunter/ble/BLEService;->i:I

    if-ne v0, v4, :cond_0

    .line 477
    new-instance v0, Lcom/nut/blehunter/ble/g;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ble/g;-><init>(Lcom/nut/blehunter/ble/BLEService;)V

    invoke-virtual {p1, p0, p0, v0}, Lcom/nut/blehunter/ble/r;->a(Lcom/nut/blehunter/ble/p;Lcom/nut/blehunter/ble/ad;Lcom/nut/blehunter/ble/ai;)V

    goto :goto_0
.end method

.method public final a(Lcom/nut/blehunter/ble/r;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 780
    const-string v0, "nut device controller state changed %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    packed-switch p2, :pswitch_data_0

    .line 850
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 787
    :pswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 9309
    :pswitch_2
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 791
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v4

    .line 794
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v0, v6, :cond_3

    move v0, v1

    .line 795
    :goto_1
    if-eqz v0, :cond_1

    .line 9375
    iget-object v5, p1, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-eqz v5, :cond_1

    .line 9376
    iget-object v5, p1, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v5}, Lcom/nut/blehunter/ble/r;->a(Landroid/bluetooth/BluetoothGatt;)V

    .line 10368
    :cond_1
    iget-object v5, p1, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-eqz v5, :cond_2

    .line 10369
    iget-object v5, p1, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 10370
    iput-object v7, p1, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    .line 11138
    :cond_2
    iput v2, p0, Lcom/nut/blehunter/ble/BLEService;->g:I

    .line 800
    if-eqz v0, :cond_4

    .line 11333
    iput-boolean v1, p1, Lcom/nut/blehunter/ble/r;->q:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 794
    goto :goto_1

    .line 805
    :cond_4
    if-eqz v4, :cond_5

    iget v0, v4, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v0, v1, :cond_5

    .line 806
    invoke-virtual {p1}, Lcom/nut/blehunter/ble/r;->a()V

    .line 807
    invoke-static {v4, p1, v2}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/entity/Nut;Lcom/nut/blehunter/ble/r;I)V

    .line 12317
    :cond_5
    iget-boolean v0, p1, Lcom/nut/blehunter/ble/r;->n:Z

    .line 810
    if-eqz v0, :cond_7

    .line 816
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->b:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v3}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 12337
    iget-boolean v0, p1, Lcom/nut/blehunter/ble/r;->q:Z

    .line 816
    if-nez v0, :cond_6

    .line 818
    if-eqz v4, :cond_6

    iget v0, v4, Lcom/nut/blehunter/entity/Nut;->K:I

    if-nez v0, :cond_6

    .line 13325
    iput-boolean v1, p1, Lcom/nut/blehunter/ble/r;->o:Z

    .line 820
    new-instance v0, Lcom/nut/blehunter/ble/k;

    iget-object v1, p0, Lcom/nut/blehunter/ble/BLEService;->l:Lcom/nut/blehunter/ble/l;

    invoke-direct {v0, v1, v3}, Lcom/nut/blehunter/ble/k;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/nut/blehunter/ble/BLEService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_6

    .line 823
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    .line 14263
    iget v1, p1, Lcom/nut/blehunter/ble/r;->v:I

    .line 831
    iget-object v2, p0, Lcom/nut/blehunter/ble/BLEService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lcom/nut/blehunter/ble/BLEService;->b:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    :cond_6
    iget-boolean v0, p0, Lcom/nut/blehunter/ble/BLEService;->h:Z

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->l:Lcom/nut/blehunter/ble/l;

    invoke-virtual {v0, v6}, Lcom/nut/blehunter/ble/l;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 841
    :cond_7
    iget-boolean v0, p0, Lcom/nut/blehunter/ble/BLEService;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    invoke-virtual {p1, v0}, Lcom/nut/blehunter/ble/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    const-string v0, "current_product_id"

    .line 15259
    iget v1, p1, Lcom/nut/blehunter/ble/r;->p:I

    .line 842
    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/ble/o;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 844
    iput-object v7, p0, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    .line 845
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/nut/blehunter/ble/r;Z)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 896
    .line 897
    const-string v0, "isDeviceBound=%s result=%s"

    new-array v1, v5, [Ljava/lang/Object;

    .line 15317
    iget-boolean v4, p1, Lcom/nut/blehunter/ble/r;->n:Z

    .line 897
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16317
    iget-boolean v0, p1, Lcom/nut/blehunter/ble/r;->n:Z

    .line 899
    if-eqz v0, :cond_7

    .line 17138
    iput v5, p0, Lcom/nut/blehunter/ble/BLEService;->g:I

    .line 901
    iget-boolean v0, p0, Lcom/nut/blehunter/ble/BLEService;->h:Z

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->l:Lcom/nut/blehunter/ble/l;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ble/l;->sendEmptyMessage(I)Z

    .line 17309
    :cond_0
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 904
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 906
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    .line 907
    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    .line 908
    iget v0, v1, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 909
    invoke-static {v1, p1, v3}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/entity/Nut;Lcom/nut/blehunter/ble/r;I)V

    .line 910
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ble/BLEService;->e(Lcom/nut/blehunter/ble/r;)V

    .line 18287
    iget-boolean v4, p1, Lcom/nut/blehunter/ble/r;->r:Z

    .line 915
    if-nez v4, :cond_1

    .line 916
    invoke-virtual {p1, v3}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 945
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-object v4, v1, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    if-eqz v4, :cond_2

    .line 920
    iget-object v4, v1, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    iget-object v4, v4, Lcom/nut/blehunter/entity/WechatIdentifier;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    iget v5, v5, Lcom/nut/blehunter/entity/WechatIdentifier;->b:I

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    iget v1, v1, Lcom/nut/blehunter/entity/WechatIdentifier;->c:I

    invoke-virtual {p1, v4, v5, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;II)V

    :cond_2
    move v1, v0

    .line 18329
    :goto_1
    iget-boolean v0, p1, Lcom/nut/blehunter/ble/r;->o:Z

    .line 925
    if-nez v0, :cond_4

    .line 19317
    iget-boolean v0, p1, Lcom/nut/blehunter/ble/r;->n:Z

    .line 926
    if-eqz v0, :cond_3

    .line 20317
    iget-boolean v0, p1, Lcom/nut/blehunter/ble/r;->n:Z

    .line 926
    if-eqz v0, :cond_4

    .line 20337
    iget-boolean v0, p1, Lcom/nut/blehunter/ble/r;->q:Z

    .line 926
    if-eqz v0, :cond_4

    .line 928
    :cond_3
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v4

    .line 929
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 930
    const-string v0, "oauth_result"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 931
    const-string v6, "new_oauth"

    .line 20341
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    .line 931
    check-cast v0, Lcom/nut/blehunter/ble/ag;

    .line 20366
    iget v0, v0, Lcom/nut/blehunter/ble/ag;->b:I

    const/4 v7, 0x3

    if-ne v0, v7, :cond_5

    move v0, v3

    .line 931
    :goto_2
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 933
    const-string v0, "previous_nut_status"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 934
    const-string v0, "device_name"

    .line 21259
    iget v1, p1, Lcom/nut/blehunter/ble/r;->p:I

    .line 934
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    .line 21333
    :cond_4
    iput-boolean v2, p1, Lcom/nut/blehunter/ble/r;->q:Z

    .line 940
    if-eqz p2, :cond_6

    .line 21948
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->l:Lcom/nut/blehunter/ble/l;

    new-instance v1, Lcom/nut/blehunter/ble/i;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ble/i;-><init>(Lcom/nut/blehunter/ble/BLEService;Lcom/nut/blehunter/ble/r;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nut/blehunter/ble/l;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    move v0, v2

    .line 20366
    goto :goto_2

    .line 943
    :cond_6
    invoke-virtual {p1, v3}, Lcom/nut/blehunter/ble/r;->a(Z)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method final a(Z)V
    .locals 3

    .prologue
    .line 607
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/nut/blehunter/ble/BLEService;->q:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/nut/blehunter/ble/BLEService;->h:Z

    if-eqz v0, :cond_1

    .line 615
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "scan_timeout"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 617
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    .line 619
    :cond_1
    return-void

    .line 611
    :catch_0
    move-exception v0

    const-string v0, "stopScan Exception"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->k:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->k:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->k:Ljava/util/concurrent/ScheduledFuture;

    .line 575
    :cond_0
    return-void
.end method

.method public final b(Lcom/nut/blehunter/ble/r;)V
    .locals 1

    .prologue
    .line 999
    const/16 v0, 0x15

    invoke-static {p1, v0}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    .line 1000
    return-void
.end method

.method public final b(Lcom/nut/blehunter/ble/r;I)V
    .locals 3

    .prologue
    .line 1004
    .line 28317
    iget-boolean v0, p1, Lcom/nut/blehunter/ble/r;->n:Z

    .line 1004
    if-eqz v0, :cond_0

    .line 1005
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    .line 29309
    iget-object v1, p1, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 1005
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    .line 1006
    if-eqz v0, :cond_0

    .line 1007
    iget v1, v0, Lcom/nut/blehunter/entity/Nut;->C:I

    if-eq v1, p2, :cond_0

    .line 1008
    iput p2, v0, Lcom/nut/blehunter/entity/Nut;->C:I

    .line 1009
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 1013
    :cond_0
    return-void
.end method

.method final b(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 693
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->j()Ljava/util/List;

    move-result-object v0

    .line 694
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 695
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 696
    iget-object v1, p0, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/ble/r;

    .line 697
    if-eqz v1, :cond_0

    .line 698
    if-eqz p1, :cond_1

    .line 5283
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/nut/blehunter/ble/r;->r:Z

    goto :goto_0

    .line 701
    :cond_1
    iget-boolean v3, v0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v0, v0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-nez v0, :cond_0

    .line 703
    :cond_3
    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 6283
    iput-boolean v4, v1, Lcom/nut/blehunter/ble/r;->r:Z

    goto :goto_0

    .line 710
    :cond_4
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 674
    iput-boolean v1, p0, Lcom/nut/blehunter/ble/BLEService;->h:Z

    .line 675
    const-string v0, "manually_scan"

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/ble/o;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 676
    return-void
.end method

.method public final c(Lcom/nut/blehunter/ble/r;)V
    .locals 2

    .prologue
    .line 1017
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    .line 30309
    iget-object v1, p1, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 1017
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->h(Ljava/lang/String;)V

    .line 1020
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v0

    .line 1021
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    .line 1022
    return-void
.end method

.method final d()V
    .locals 4

    .prologue
    .line 679
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    .line 680
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 681
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 682
    invoke-virtual {v0}, Lcom/nut/blehunter/ble/r;->a()V

    .line 683
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 3395
    iget-object v3, v0, Lcom/nut/blehunter/ble/r;->x:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_0

    .line 3396
    iget-object v3, v0, Lcom/nut/blehunter/ble/r;->x:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 3397
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/nut/blehunter/ble/r;->x:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4309
    :cond_0
    iget-object v0, v0, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 685
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nut/blehunter/provider/l;->g(Ljava/lang/String;)V

    .line 680
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 690
    return-void
.end method

.method public final d(Lcom/nut/blehunter/ble/r;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1026
    .line 31291
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->l:[B

    .line 1027
    invoke-static {v0}, Lcom/nut/blehunter/d/q;->a([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1028
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 1029
    const/4 v2, 0x4

    aget-byte v2, v0, v2

    aput-byte v2, v1, v8

    .line 1030
    const/4 v2, 0x5

    aget-byte v2, v0, v2

    aput-byte v2, v1, v9

    .line 1031
    invoke-static {v1}, Lcom/nut/blehunter/d/q;->b([B)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1032
    const/4 v3, 0x6

    aget-byte v3, v0, v3

    aput-byte v3, v1, v8

    .line 1033
    const/4 v3, 0x7

    aget-byte v3, v0, v3

    aput-byte v3, v1, v9

    .line 1034
    invoke-static {v1}, Lcom/nut/blehunter/d/q;->b([B)J

    move-result-wide v4

    long-to-int v3, v4

    .line 1035
    new-array v4, v9, [B

    const/16 v5, 0x8

    aget-byte v5, v0, v5

    aput-byte v5, v4, v8

    invoke-static {v4}, Lcom/nut/blehunter/d/q;->b([B)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1037
    new-array v5, v9, [B

    const/16 v6, 0x9

    aget-byte v6, v0, v6

    aput-byte v6, v5, v8

    invoke-static {v5}, Lcom/nut/blehunter/d/q;->b([B)J

    move-result-wide v6

    long-to-int v5, v6

    .line 1038
    const/16 v6, 0xa

    aget-byte v6, v0, v6

    aput-byte v6, v1, v8

    .line 1039
    const/16 v6, 0xb

    aget-byte v0, v0, v6

    aput-byte v0, v1, v9

    .line 1040
    invoke-static {v1}, Lcom/nut/blehunter/d/q;->b([B)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1042
    const/16 v1, 0x2b

    invoke-static {p1, v1}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v1

    .line 1043
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 1044
    const-string v7, "min_conn_interval"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1045
    const-string v7, "max_conn_interval"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1046
    const-string v7, "slave_latency"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1047
    const-string v7, "tx_power"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1048
    const-string v7, "adv_interval"

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1049
    const-string v6, "min conn interval is %s"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    const-string v2, "max conn interval is %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v2, v6}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    const-string v2, "slave latency is %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1052
    const-string v2, "tx power is %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    const-string v2, "adv interval is %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    .line 1057
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->m:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 714
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 715
    new-instance v0, Lcom/nut/blehunter/ble/l;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ble/l;-><init>(Lcom/nut/blehunter/ble/BLEService;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->l:Lcom/nut/blehunter/ble/l;

    .line 716
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/nut/blehunter/ble/BLEService;->l:Lcom/nut/blehunter/ble/l;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->m:Landroid/os/Messenger;

    .line 717
    new-instance v0, Lcom/nut/blehunter/ble/n;

    iget-object v1, p0, Lcom/nut/blehunter/ble/BLEService;->l:Lcom/nut/blehunter/ble/l;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/ble/n;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->n:Lcom/nut/blehunter/ble/n;

    .line 718
    new-instance v0, Lcom/nut/blehunter/ble/m;

    iget-object v1, p0, Lcom/nut/blehunter/ble/BLEService;->l:Lcom/nut/blehunter/ble/l;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/ble/m;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->f:Lcom/nut/blehunter/ble/m;

    .line 719
    invoke-direct {p0}, Lcom/nut/blehunter/ble/BLEService;->f()Z

    .line 6726
    const-string v0, "manually_scan"

    .line 8016
    const-string v1, "ble"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7040
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6726
    iput-boolean v0, p0, Lcom/nut/blehunter/ble/BLEService;->h:Z

    .line 6728
    const-string v0, "connect_type"

    invoke-static {p0, v0}, Lcom/nut/blehunter/ble/o;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ble/BLEService;->i:I

    .line 721
    invoke-direct {p0}, Lcom/nut/blehunter/ble/BLEService;->g()V

    .line 722
    new-instance v0, Lcom/nut/blehunter/ble/ae;

    invoke-direct {v0}, Lcom/nut/blehunter/ble/ae;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->o:Lcom/nut/blehunter/ble/ae;

    .line 723
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/nut/blehunter/ble/BLEService;->a()V

    .line 766
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 771
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ble/BLEService;->d()V

    .line 772
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 775
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 776
    return-void
.end method
