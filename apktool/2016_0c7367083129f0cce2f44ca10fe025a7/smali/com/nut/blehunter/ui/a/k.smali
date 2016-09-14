.class public final Lcom/nut/blehunter/ui/a/k;
.super Landroid/support/v7/widget/ex;
.source "FriendListAdapter.java"


# instance fields
.field public final l:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    .line 178
    const v0, 0x7f0d01df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/k;->l:Landroid/widget/ImageView;

    .line 179
    return-void
.end method
