.class public final Landroid/support/v7/widget/b;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# instance fields
.field a:I

.field final synthetic b:Landroid/support/v7/widget/a;

.field private c:Z


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/a;)V
    .locals 1

    .prologue
    .line 273
    iput-object p1, p0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/b;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/b;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/widget/a;

    iput-object p1, v0, Landroid/support/v7/widget/a;->f:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 280
    iput p2, p0, Landroid/support/v7/widget/b;->a:I

    .line 281
    return-object p0
.end method

.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/b;->c:Z

    .line 301
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/support/v7/widget/b;->c:Z

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/a;->f:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/widget/a;

    iget v1, p0, Landroid/support/v7/widget/b;->a:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;I)V

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/widget/a;

    invoke-static {v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;)V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/b;->c:Z

    .line 288
    return-void
.end method
