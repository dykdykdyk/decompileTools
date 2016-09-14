.class final Lcom/nut/blehunter/qrcode/k;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/nut/blehunter/qrcode/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/k;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/k;->b:Landroid/app/Activity;

    .line 44
    new-instance v0, Lcom/nut/blehunter/qrcode/m;

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/qrcode/m;-><init>(Lcom/nut/blehunter/qrcode/k;B)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/k;->c:Landroid/content/BroadcastReceiver;

    .line 45
    iput-boolean v1, p0, Lcom/nut/blehunter/qrcode/k;->d:Z

    .line 46
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/k;->a()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/qrcode/k;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/k;->d()V

    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/qrcode/k;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/k;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nut/blehunter/qrcode/k;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 3

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/k;->d()V

    .line 51
    new-instance v0, Lcom/nut/blehunter/qrcode/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/qrcode/l;-><init>(Lcom/nut/blehunter/qrcode/k;B)V

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/k;->e:Landroid/os/AsyncTask;

    .line 52
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/k;->e:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/k;->d()V

    .line 57
    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/k;->d:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/k;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nut/blehunter/qrcode/k;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/qrcode/k;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    sget-object v0, Lcom/nut/blehunter/qrcode/k;->a:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was never registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 4

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nut/blehunter/qrcode/k;->d:Z

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/nut/blehunter/qrcode/k;->a:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was already registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/nut/blehunter/qrcode/k;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/k;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nut/blehunter/qrcode/k;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/qrcode/k;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/k;->e:Landroid/os/AsyncTask;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/qrcode/k;->e:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
