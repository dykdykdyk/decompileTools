.class final Landroid/support/v7/a/m;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/a/d;

.field final synthetic b:Landroid/support/v7/a/j;


# direct methods
.method constructor <init>(Landroid/support/v7/a/j;Landroid/support/v7/a/d;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Landroid/support/v7/a/m;->b:Landroid/support/v7/a/j;

    iput-object p2, p0, Landroid/support/v7/a/m;->a:Landroid/support/v7/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 959
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/support/v7/a/j;

    iget-object v0, v0, Landroid/support/v7/a/j;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Landroid/support/v7/a/m;->a:Landroid/support/v7/a/d;

    .line 1061
    iget-object v1, v1, Landroid/support/v7/a/d;->b:Landroid/support/v7/a/av;

    .line 959
    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 960
    iget-object v0, p0, Landroid/support/v7/a/m;->b:Landroid/support/v7/a/j;

    iget-boolean v0, v0, Landroid/support/v7/a/j;->E:Z

    if-nez v0, :cond_0

    .line 961
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/support/v7/a/d;

    .line 2061
    iget-object v0, v0, Landroid/support/v7/a/d;->b:Landroid/support/v7/a/av;

    .line 961
    invoke-virtual {v0}, Landroid/support/v7/a/av;->dismiss()V

    .line 963
    :cond_0
    return-void
.end method
