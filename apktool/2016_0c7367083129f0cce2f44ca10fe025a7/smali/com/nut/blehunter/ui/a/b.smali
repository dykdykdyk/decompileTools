.class public final Lcom/nut/blehunter/ui/a/b;
.super Landroid/support/v7/widget/ex;
.source "AlertSoundAdapter.java"


# instance fields
.field public l:Landroid/widget/RadioButton;

.field private m:Lcom/nut/blehunter/ui/a/d;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/nut/blehunter/ui/a/d;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    move-object v0, p1

    .line 30
    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/b;->l:Landroid/widget/RadioButton;

    .line 31
    iput-object p2, p0, Lcom/nut/blehunter/ui/a/b;->m:Lcom/nut/blehunter/ui/a/d;

    .line 32
    new-instance v0, Lcom/nut/blehunter/ui/a/c;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/a/c;-><init>(Lcom/nut/blehunter/ui/a/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/a/b;)Lcom/nut/blehunter/ui/a/d;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/b;->m:Lcom/nut/blehunter/ui/a/d;

    return-object v0
.end method
