.class final Landroid/support/v7/widget/bl;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bj;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bj;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bj;

    iget-object v1, v1, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v0, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/bj;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->c()V

    .line 806
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->a()V

    .line 804
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bj;

    invoke-static {v0}, Landroid/support/v7/widget/bj;->b(Landroid/support/v7/widget/bj;)V

    goto :goto_0
.end method
