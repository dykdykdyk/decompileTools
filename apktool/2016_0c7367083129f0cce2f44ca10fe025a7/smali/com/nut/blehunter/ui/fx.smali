.class final Lcom/nut/blehunter/ui/fx;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/nut/blehunter/ui/fx;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 731
    iget-object v0, p0, Lcom/nut/blehunter/ui/fx;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->l(Lcom/nut/blehunter/ui/ScanDeviceActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/fx;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->k(Lcom/nut/blehunter/ui/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 732
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 737
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 727
    return-void
.end method
