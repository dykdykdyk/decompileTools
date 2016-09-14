.class public final Lcom/nut/blehunter/ui/ds;
.super Landroid/support/v7/widget/ex;
.source "NewFriendActivity.java"


# instance fields
.field l:Landroid/widget/RelativeLayout;

.field m:Lcom/nut/blehunter/ui/widget/CircleImageView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field final synthetic p:Lcom/nut/blehunter/ui/dr;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/dr;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/nut/blehunter/ui/ds;->p:Lcom/nut/blehunter/ui/dr;

    .line 181
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    .line 182
    const v0, 0x7f0d01ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ds;->l:Landroid/widget/RelativeLayout;

    .line 183
    const v0, 0x7f0d01ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ds;->m:Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 184
    const v0, 0x7f0d01ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ds;->n:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0d01f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ds;->o:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/nut/blehunter/ui/ds;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/nut/blehunter/ui/dt;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/dt;-><init>(Lcom/nut/blehunter/ui/ds;Lcom/nut/blehunter/ui/dr;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/nut/blehunter/ui/ds;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/nut/blehunter/ui/du;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/du;-><init>(Lcom/nut/blehunter/ui/ds;Lcom/nut/blehunter/ui/dr;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 214
    return-void
.end method
