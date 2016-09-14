.class final Landroid/support/v7/a/g;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v7/a/d;


# direct methods
.method constructor <init>(Landroid/support/v7/a/d;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Landroid/support/v7/a/g;->c:Landroid/support/v7/a/d;

    iput-object p2, p0, Landroid/support/v7/a/g;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/a/g;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 559
    iget-object v0, p0, Landroid/support/v7/a/g;->c:Landroid/support/v7/a/d;

    .line 1061
    iget-object v0, v0, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    .line 559
    iget-object v1, p0, Landroid/support/v7/a/g;->a:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/a/g;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Landroid/support/v7/a/d;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 560
    return-void
.end method
