.class final Lcom/nut/blehunter/ui/eb;
.super Ljava/lang/Object;
.source "NutDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/NutDetailActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutDetailActivity;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/nut/blehunter/ui/eb;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/nut/blehunter/ui/eb;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->d(Lcom/nut/blehunter/ui/NutDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/nut/blehunter/ui/eb;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->f(Lcom/nut/blehunter/ui/NutDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/eb;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->e(Lcom/nut/blehunter/ui/NutDetailActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/eb;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->f(Lcom/nut/blehunter/ui/NutDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method
