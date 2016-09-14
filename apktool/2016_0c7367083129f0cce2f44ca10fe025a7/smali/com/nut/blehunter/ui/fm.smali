.class final Lcom/nut/blehunter/ui/fm;
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
    .line 419
    iput-object p1, p0, Lcom/nut/blehunter/ui/fm;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/nut/blehunter/ui/fm;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    .line 423
    const-string v0, "NTUIEventPair"

    const-string v1, "SCAN_TIMEOUT"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/nut/blehunter/ui/fm;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const-string v1, "bind_search_timeout"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    return-void
.end method
