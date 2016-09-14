.class public final Lcom/nut/blehunter/ui/a/f;
.super Landroid/support/v7/widget/ex;
.source "ConnectRecordAdapter.java"


# instance fields
.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    .line 51
    const v0, 0x7f0d01e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/f;->l:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0d014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/f;->m:Landroid/widget/TextView;

    .line 53
    return-void
.end method
