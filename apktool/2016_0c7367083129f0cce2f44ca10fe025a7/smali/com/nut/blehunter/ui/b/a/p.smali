.class public final Lcom/nut/blehunter/ui/b/a/p;
.super Landroid/support/v7/widget/ex;
.source "MapChooseDialogFragment.java"


# instance fields
.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/TextView;

.field final synthetic n:Lcom/nut/blehunter/ui/b/a/o;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/a/o;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/p;->n:Lcom/nut/blehunter/ui/b/a/o;

    .line 156
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    .line 157
    const v0, 0x7f0d01e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/p;->l:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f0d01e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/p;->m:Landroid/widget/TextView;

    .line 159
    new-instance v0, Lcom/nut/blehunter/ui/b/a/q;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/ui/b/a/q;-><init>(Lcom/nut/blehunter/ui/b/a/p;Lcom/nut/blehunter/ui/b/a/o;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method
