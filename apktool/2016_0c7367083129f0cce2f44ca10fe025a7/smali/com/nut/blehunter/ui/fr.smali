.class final Lcom/nut/blehunter/ui/fr;
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
    .line 438
    iput-object p1, p0, Lcom/nut/blehunter/ui/fr;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/nut/blehunter/ui/fr;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->d(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    .line 442
    return-void
.end method
