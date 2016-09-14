.class final Landroid/support/v7/widget/a/l;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorUpdateListenerCompat;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a/a;

.field final synthetic b:Landroid/support/v7/widget/a/k;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/k;Landroid/support/v7/widget/a/a;)V
    .locals 0

    .prologue
    .line 2340
    iput-object p1, p0, Landroid/support/v7/widget/a/l;->b:Landroid/support/v7/widget/a/k;

    iput-object p2, p0, Landroid/support/v7/widget/a/l;->a:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 2

    .prologue
    .line 2343
    iget-object v0, p0, Landroid/support/v7/widget/a/l;->b:Landroid/support/v7/widget/a/k;

    invoke-interface {p1}, Landroid/support/v4/animation/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v1

    .line 3365
    iput v1, v0, Landroid/support/v7/widget/a/k;->o:F

    .line 2344
    return-void
.end method
