.class final Lcom/nut/blehunter/ui/fu;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nut/blehunter/ui/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ScanDeviceActivity;I)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iput p2, p0, Lcom/nut/blehunter/ui/fu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 630
    iget-object v3, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget v0, p0, Lcom/nut/blehunter/ui/fu;->a:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->c(Lcom/nut/blehunter/ui/ScanDeviceActivity;Z)V

    .line 631
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget v3, p0, Lcom/nut/blehunter/ui/fu;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->d(Lcom/nut/blehunter/ui/ScanDeviceActivity;Z)V

    .line 632
    iget v0, p0, Lcom/nut/blehunter/ui/fu;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->f(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    .line 634
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 638
    :cond_0
    iget v0, p0, Lcom/nut/blehunter/ui/fu;->a:I

    packed-switch v0, :pswitch_data_0

    .line 655
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 630
    goto :goto_0

    :cond_2
    move v1, v2

    .line 631
    goto :goto_1

    .line 640
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->g(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    .line 641
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->h(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    goto :goto_2

    .line 644
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a(Lcom/nut/blehunter/ui/ScanDeviceActivity;J)J

    .line 645
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->i(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    goto :goto_2

    .line 648
    :pswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 650
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ScanDeviceActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/fu;->b:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->d(Lcom/nut/blehunter/ui/ScanDeviceActivity;)V

    goto :goto_2

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 626
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 622
    return-void
.end method
