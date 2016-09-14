.class public final Lcom/nut/blehunter/ui/a/s;
.super Landroid/support/v7/widget/ex;
.source "NutAdapter.java"


# instance fields
.field l:Lcom/nut/blehunter/ui/widget/CircleImageView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/ImageView;

.field q:Landroid/widget/ImageView;

.field r:Landroid/widget/FrameLayout;

.field s:Landroid/widget/TextView;

.field final synthetic t:Lcom/nut/blehunter/ui/a/q;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/q;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 186
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/s;->t:Lcom/nut/blehunter/ui/a/q;

    .line 187
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    .line 188
    const v0, 0x7f0d01f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/s;->l:Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 189
    const v0, 0x7f0d01f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/s;->m:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0d01f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/s;->n:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0d01fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/s;->o:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0d01f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/s;->p:Landroid/widget/ImageView;

    .line 193
    const v0, 0x7f0d01f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/s;->q:Landroid/widget/ImageView;

    .line 194
    const v0, 0x7f0d01f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/s;->r:Landroid/widget/FrameLayout;

    .line 195
    const v0, 0x7f0d01f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/s;->s:Landroid/widget/TextView;

    .line 196
    return-void
.end method
