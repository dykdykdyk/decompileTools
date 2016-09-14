.class final Lcom/nut/blehunter/ui/a/h;
.super Ljava/lang/Object;
.source "FriendListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ex;

.field final synthetic b:Lcom/nut/blehunter/ui/a/g;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/g;Landroid/support/v7/widget/ex;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/h;->b:Lcom/nut/blehunter/ui/a/g;

    iput-object p2, p0, Lcom/nut/blehunter/ui/a/h;->a:Landroid/support/v7/widget/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/h;->b:Lcom/nut/blehunter/ui/a/g;

    .line 1045
    iget-object v1, v0, Lcom/nut/blehunter/ui/a/g;->d:Lcom/nut/blehunter/ui/a/m;

    .line 71
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/h;->a:Landroid/support/v7/widget/ex;

    check-cast v0, Lcom/nut/blehunter/ui/a/k;

    iget-object v0, v0, Lcom/nut/blehunter/ui/a/k;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nut/blehunter/ui/a/h;->a:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->d()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/nut/blehunter/ui/a/m;->a(I)V

    .line 72
    return-void
.end method
