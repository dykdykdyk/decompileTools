.class final Landroid/support/v7/a/f;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v7/a/d;


# direct methods
.method constructor <init>(Landroid/support/v7/a/d;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Landroid/support/v7/a/f;->c:Landroid/support/v7/a/d;

    iput-object p2, p0, Landroid/support/v7/a/f;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/a/f;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v7/a/f;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/a/f;->b:Landroid/view/View;

    invoke-static {p1, v0, v1}, Landroid/support/v7/a/d;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 553
    return-void
.end method
