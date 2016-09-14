.class final Landroid/support/v7/a/n;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/support/v7/a/d;

.field final synthetic c:Landroid/support/v7/a/j;


# direct methods
.method constructor <init>(Landroid/support/v7/a/j;Landroid/widget/ListView;Landroid/support/v7/a/d;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Landroid/support/v7/a/n;->c:Landroid/support/v7/a/j;

    iput-object p2, p0, Landroid/support/v7/a/n;->a:Landroid/widget/ListView;

    iput-object p3, p0, Landroid/support/v7/a/n;->b:Landroid/support/v7/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 969
    iget-object v0, p0, Landroid/support/v7/a/n;->c:Landroid/support/v7/a/j;

    iget-object v0, v0, Landroid/support/v7/a/j;->C:[Z

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Landroid/support/v7/a/n;->c:Landroid/support/v7/a/j;

    iget-object v0, v0, Landroid/support/v7/a/j;->C:[Z

    iget-object v1, p0, Landroid/support/v7/a/n;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 972
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/n;->c:Landroid/support/v7/a/j;

    iget-object v0, v0, Landroid/support/v7/a/j;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Landroid/support/v7/a/n;->b:Landroid/support/v7/a/d;

    .line 1061
    iget-object v1, v1, Landroid/support/v7/a/d;->b:Landroid/support/v7/a/av;

    .line 973
    iget-object v2, p0, Landroid/support/v7/a/n;->a:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    .line 972
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 974
    return-void
.end method
