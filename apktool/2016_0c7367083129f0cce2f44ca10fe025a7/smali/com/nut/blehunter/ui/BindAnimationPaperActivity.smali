.class public Lcom/nut/blehunter/ui/BindAnimationPaperActivity;
.super Lcom/nut/blehunter/ui/b;
.source "BindAnimationPaperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final i()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f0201e0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->setResult(I)V

    .line 48
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->finish()V

    .line 49
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    .line 50
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->finish()V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x7f0d0092
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->e()V

    .line 21
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->setContentView(I)V

    .line 22
    const v0, 0x7f060054

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->a(I)V

    .line 24
    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1064
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {p0, v3}, Lcom/nut/blehunter/d/q;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->a:Landroid/animation/ValueAnimator;

    .line 1065
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1066
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->a:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1067
    iget-object v1, p0, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->a:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/nut/blehunter/ui/n;

    invoke-direct {v2, p0, v0}, Lcom/nut/blehunter/ui/n;-><init>(Lcom/nut/blehunter/ui/BindAnimationPaperActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1078
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 26
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onPause()V

    .line 36
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onResume()V

    .line 42
    iget-object v0, p0, Lcom/nut/blehunter/ui/BindAnimationPaperActivity;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 43
    return-void
.end method
