.class final Lcom/nut/blehunter/ui/fv;
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
    .line 679
    iput-object p1, p0, Lcom/nut/blehunter/ui/fv;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/nut/blehunter/ui/fv;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const v1, 0x7f0d0137

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/nut/blehunter/ui/fv;->a:Lcom/nut/blehunter/ui/ScanDeviceActivity;

    const v1, 0x7f0d0135

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/ScanDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 693
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 683
    return-void
.end method
