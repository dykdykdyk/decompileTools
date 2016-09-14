.class final Lcom/nut/blehunter/ui/ft;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/nut/blehunter/ui/ft;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 527
    iget-object v1, p0, Lcom/nut/blehunter/ui/ft;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget-object v0, p0, Lcom/nut/blehunter/ui/ft;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->e(Lcom/nut/blehunter/ui/ScanDeviceActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->b(Lcom/nut/blehunter/ui/ScanDeviceActivity;Z)Z

    .line 528
    return-void

    .line 527
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 515
    return-void
.end method
