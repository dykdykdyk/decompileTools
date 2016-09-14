.class public final Lcom/nut/blehunter/ui/au;
.super Landroid/support/v7/widget/ex;
.source "FriendManageActivity.java"


# instance fields
.field l:Landroid/widget/RelativeLayout;

.field m:Lcom/nut/blehunter/ui/widget/CircleImageView;

.field n:Landroid/widget/TextView;

.field final synthetic o:Lcom/nut/blehunter/ui/at;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/at;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 342
    iput-object p1, p0, Lcom/nut/blehunter/ui/au;->o:Lcom/nut/blehunter/ui/at;

    .line 343
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    .line 344
    const v0, 0x7f0d01e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nut/blehunter/ui/au;->l:Landroid/widget/RelativeLayout;

    .line 345
    const v0, 0x7f0d00b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/au;->m:Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 346
    const v0, 0x7f0d00ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/au;->n:Landroid/widget/TextView;

    .line 348
    iget-object v0, p0, Lcom/nut/blehunter/ui/au;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/nut/blehunter/ui/av;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/av;-><init>(Lcom/nut/blehunter/ui/au;Lcom/nut/blehunter/ui/at;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 364
    return-void
.end method
