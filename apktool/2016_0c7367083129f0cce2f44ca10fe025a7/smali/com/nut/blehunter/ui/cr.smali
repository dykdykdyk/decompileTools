.class final Lcom/nut/blehunter/ui/cr;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/nut/blehunter/ui/cr;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/nut/blehunter/ui/cr;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;Z)Z

    .line 488
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/nut/blehunter/ui/cr;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;Z)Z

    .line 477
    iget-object v0, p0, Lcom/nut/blehunter/ui/cr;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->n(Lcom/nut/blehunter/ui/Main2Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/nut/blehunter/ui/cr;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->i(Lcom/nut/blehunter/ui/Main2Activity;)Z

    .line 479
    iget-object v0, p0, Lcom/nut/blehunter/ui/cr;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->f(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 480
    iget-object v0, p0, Lcom/nut/blehunter/ui/cr;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->g(Lcom/nut/blehunter/ui/Main2Activity;)V

    .line 481
    iget-object v0, p0, Lcom/nut/blehunter/ui/cr;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nut/blehunter/ui/cr;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;Lcom/nut/blehunter/entity/Friend;)V

    .line 483
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/nut/blehunter/ui/cr;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;Z)Z

    .line 472
    return-void
.end method
