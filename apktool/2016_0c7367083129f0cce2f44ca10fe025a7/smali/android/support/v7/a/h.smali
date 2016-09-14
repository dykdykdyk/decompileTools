.class final Landroid/support/v7/a/h;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v7/a/d;


# direct methods
.method constructor <init>(Landroid/support/v7/a/d;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Landroid/support/v7/a/h;->c:Landroid/support/v7/a/d;

    iput-object p2, p0, Landroid/support/v7/a/h;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/a/h;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/a/h;->b:Landroid/view/View;

    invoke-static {p1, v0, v1}, Landroid/support/v7/a/d;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 572
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 566
    return-void
.end method
