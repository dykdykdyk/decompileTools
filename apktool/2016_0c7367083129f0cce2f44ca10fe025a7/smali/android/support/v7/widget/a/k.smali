.class Landroid/support/v7/widget/a/k;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorListenerCompat;


# instance fields
.field private final a:I

.field private b:Z

.field final d:F

.field final e:F

.field final f:F

.field final g:F

.field final h:Landroid/support/v7/widget/ex;

.field final i:I

.field final j:Landroid/support/v4/animation/ValueAnimatorCompat;

.field public k:Z

.field l:F

.field m:F

.field n:Z

.field o:F

.field final synthetic p:Landroid/support/v7/widget/a/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/ex;IIFFFF)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2330
    iput-object p1, p0, Landroid/support/v7/widget/a/k;->p:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2323
    iput-boolean v0, p0, Landroid/support/v7/widget/a/k;->n:Z

    .line 2325
    iput-boolean v0, p0, Landroid/support/v7/widget/a/k;->b:Z

    .line 2331
    iput p4, p0, Landroid/support/v7/widget/a/k;->i:I

    .line 2332
    iput p3, p0, Landroid/support/v7/widget/a/k;->a:I

    .line 2333
    iput-object p2, p0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    .line 2334
    iput p5, p0, Landroid/support/v7/widget/a/k;->d:F

    .line 2335
    iput p6, p0, Landroid/support/v7/widget/a/k;->e:F

    .line 2336
    iput p7, p0, Landroid/support/v7/widget/a/k;->f:F

    .line 2337
    iput p8, p0, Landroid/support/v7/widget/a/k;->g:F

    .line 2338
    invoke-static {}, Landroid/support/v4/animation/AnimatorCompatHelper;->emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/a/k;->j:Landroid/support/v4/animation/ValueAnimatorCompat;

    .line 2339
    iget-object v0, p0, Landroid/support/v7/widget/a/k;->j:Landroid/support/v4/animation/ValueAnimatorCompat;

    new-instance v1, Landroid/support/v7/widget/a/l;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/a/l;-><init>(Landroid/support/v7/widget/a/k;Landroid/support/v7/widget/a/a;)V

    invoke-interface {v0, v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V

    .line 2346
    iget-object v0, p0, Landroid/support/v7/widget/a/k;->j:Landroid/support/v4/animation/ValueAnimatorCompat;

    iget-object v1, p2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->setTarget(Landroid/view/View;)V

    .line 2347
    iget-object v0, p0, Landroid/support/v7/widget/a/k;->j:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/ValueAnimatorCompat;->addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V

    .line 3365
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/a/k;->o:F

    .line 2349
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/k;)Z
    .locals 1

    .prologue
    .line 2297
    iget-boolean v0, p0, Landroid/support/v7/widget/a/k;->b:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/a/k;)I
    .locals 1

    .prologue
    .line 2297
    iget v0, p0, Landroid/support/v7/widget/a/k;->a:I

    return v0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 1

    .prologue
    .line 2400
    .line 4365
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v7/widget/a/k;->o:F

    .line 2401
    return-void
.end method

.method public onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2392
    iget-boolean v0, p0, Landroid/support/v7/widget/a/k;->b:Z

    if-nez v0, :cond_0

    .line 2393
    iget-object v0, p0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ex;->a(Z)V

    .line 2395
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/a/k;->b:Z

    .line 2396
    return-void
.end method

.method public onAnimationRepeat(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0

    .prologue
    .line 2406
    return-void
.end method

.method public onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0

    .prologue
    .line 2388
    return-void
.end method
