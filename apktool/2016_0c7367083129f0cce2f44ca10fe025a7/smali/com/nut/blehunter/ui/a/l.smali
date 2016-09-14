.class public final Lcom/nut/blehunter/ui/a/l;
.super Landroid/support/v7/widget/ex;
.source "FriendListAdapter.java"

# interfaces
.implements Lcom/nut/blehunter/ui/widget/e;


# instance fields
.field public final l:Lcom/nut/blehunter/ui/widget/CircleImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    .line 156
    const v0, 0x7f0d01df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/l;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 157
    return-void
.end method


# virtual methods
.method public final t()V
    .locals 2

    .prologue
    const v1, 0x3f8ccccd    # 1.1f

    .line 161
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/l;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 162
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/l;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 163
    return-void
.end method

.method public final u()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 167
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/l;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 168
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/l;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 169
    return-void
.end method
