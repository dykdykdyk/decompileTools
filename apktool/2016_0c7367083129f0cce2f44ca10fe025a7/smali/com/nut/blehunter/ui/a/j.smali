.class final Lcom/nut/blehunter/ui/a/j;
.super Ljava/lang/Object;
.source "FriendListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/a/l;

.field final synthetic b:Landroid/support/v7/widget/ex;

.field final synthetic c:Lcom/nut/blehunter/ui/a/g;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/g;Lcom/nut/blehunter/ui/a/l;Landroid/support/v7/widget/ex;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/j;->c:Lcom/nut/blehunter/ui/a/g;

    iput-object p2, p0, Lcom/nut/blehunter/ui/a/j;->a:Lcom/nut/blehunter/ui/a/l;

    iput-object p3, p0, Lcom/nut/blehunter/ui/a/j;->b:Landroid/support/v7/widget/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/j;->c:Lcom/nut/blehunter/ui/a/g;

    .line 1045
    iget-object v0, v0, Lcom/nut/blehunter/ui/a/g;->d:Lcom/nut/blehunter/ui/a/m;

    .line 91
    iget-object v1, p0, Lcom/nut/blehunter/ui/a/j;->a:Lcom/nut/blehunter/ui/a/l;

    iget-object v1, v1, Lcom/nut/blehunter/ui/a/l;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/a/j;->b:Landroid/support/v7/widget/ex;

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/a/m;->a(I)V

    .line 92
    return-void
.end method
