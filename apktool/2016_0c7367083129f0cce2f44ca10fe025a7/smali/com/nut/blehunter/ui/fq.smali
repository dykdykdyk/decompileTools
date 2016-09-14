.class final Lcom/nut/blehunter/ui/fq;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/nut/blehunter/ui/fq;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/nut/blehunter/ui/fq;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/ui/ScanDeviceActivity;Z)V

    .line 431
    iget-object v0, p0, Lcom/nut/blehunter/ui/fq;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    .line 432
    iget-object v0, p0, Lcom/nut/blehunter/ui/fq;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c(Lcom/nut/blehunter/ui/ScanDeviceActivity;)I

    .line 433
    const-string v0, "NTUIEventPair"

    const-string v1, "CONNECT_TIMEOUT"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "NTBindEvent"

    const-string v1, "CONNECTION_FAILED"

    const-string v2, "TYPE"

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/nut/blehunter/ui/fq;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const-string v1, "bind_connect_timeout"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    return-void
.end method
