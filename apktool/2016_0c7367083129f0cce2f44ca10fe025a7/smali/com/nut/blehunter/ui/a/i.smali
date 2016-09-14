.class final Lcom/nut/blehunter/ui/a/i;
.super Ljava/lang/Object;
.source "FriendListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ex;

.field final synthetic b:Lcom/nut/blehunter/ui/a/g;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/g;Landroid/support/v7/widget/ex;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/i;->b:Lcom/nut/blehunter/ui/a/g;

    iput-object p2, p0, Lcom/nut/blehunter/ui/a/i;->a:Landroid/support/v7/widget/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/i;->b:Lcom/nut/blehunter/ui/a/g;

    .line 1045
    iget-object v0, v0, Lcom/nut/blehunter/ui/a/g;->c:Lcom/nut/blehunter/ui/widget/i;

    .line 84
    iget-object v1, p0, Lcom/nut/blehunter/ui/a/i;->a:Landroid/support/v7/widget/ex;

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/widget/i;->a(Landroid/support/v7/widget/ex;)V

    .line 85
    const/4 v0, 0x0

    return v0
.end method
