.class final Lcom/nut/blehunter/service/s;
.super Ljava/lang/Object;
.source "NutTrackerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/nut/blehunter/service/s;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nut/blehunter/service/s;->a:Lcom/nut/blehunter/service/NutTrackerService;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/service/NutTrackerService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 244
    iget-object v0, p0, Lcom/nut/blehunter/service/s;->a:Lcom/nut/blehunter/service/NutTrackerService;

    .line 1440
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    .line 245
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/nut/blehunter/service/s;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-static {v0}, Lcom/nut/blehunter/service/NutTrackerService;->d(Lcom/nut/blehunter/service/NutTrackerService;)V

    .line 248
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nut/blehunter/service/s;->a:Lcom/nut/blehunter/service/NutTrackerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/service/NutTrackerService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 253
    return-void
.end method
