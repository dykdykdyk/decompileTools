.class final Landroid/support/v7/widget/bm;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic b:Landroid/support/v7/widget/bj;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bj;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Landroid/support/v7/widget/bm;->b:Landroid/support/v7/widget/bj;

    iput-object p2, p0, Landroid/support/v7/widget/bm;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Landroid/support/v7/widget/bm;->b:Landroid/support/v7/widget/bj;

    iget-object v0, v0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-virtual {v0}, Landroid/support/v7/widget/bg;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 813
    if-eqz v0, :cond_0

    .line 814
    iget-object v1, p0, Landroid/support/v7/widget/bm;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 816
    :cond_0
    return-void
.end method
