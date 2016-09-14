.class public final Lcom/nut/blehunter/ui/gm;
.super Landroid/support/v7/widget/ex;
.source "ShareManageActivity.java"


# instance fields
.field l:Lcom/nut/blehunter/ui/widget/CircleImageView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/ImageView;

.field final synthetic o:Lcom/nut/blehunter/ui/gl;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/gl;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 260
    iput-object p1, p0, Lcom/nut/blehunter/ui/gm;->o:Lcom/nut/blehunter/ui/gl;

    .line 261
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    .line 263
    const v0, 0x7f0d0206

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/gm;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 264
    const v0, 0x7f0d0207

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/gm;->m:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f0d0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/gm;->n:Landroid/widget/ImageView;

    .line 267
    iget-object v0, p0, Lcom/nut/blehunter/ui/gm;->n:Landroid/widget/ImageView;

    new-instance v1, Lcom/nut/blehunter/ui/gn;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/gn;-><init>(Lcom/nut/blehunter/ui/gm;Lcom/nut/blehunter/ui/gl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    return-void
.end method
