.class public final Lcom/nut/blehunter/ui/a/t;
.super Landroid/support/v7/widget/dx;
.source "RepeatTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/dx",
        "<",
        "Landroid/support/v7/widget/ex;",
        ">;"
    }
.end annotation


# instance fields
.field private c:[Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>([Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/t;->c:[Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/nut/blehunter/ui/a/t;->d:I

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030099

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/nut/blehunter/ui/a/u;

    invoke-direct {v1, v0}, Lcom/nut/blehunter/ui/a/u;-><init>(Landroid/view/View;)V

    .line 42
    return-object v1
.end method

.method public final a(Landroid/support/v7/widget/ex;I)V
    .locals 2

    .prologue
    .line 47
    check-cast p1, Lcom/nut/blehunter/ui/a/u;

    .line 48
    iget-object v0, p1, Lcom/nut/blehunter/ui/a/u;->l:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/a/t;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget v0, p0, Lcom/nut/blehunter/ui/a/t;->d:I

    if-eqz v0, :cond_0

    .line 52
    iget v0, p0, Lcom/nut/blehunter/ui/a/t;->d:I

    shr-int/2addr v0, p2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p1, Lcom/nut/blehunter/ui/a/u;->l:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/nut/blehunter/ui/a/u;->l:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/t;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/t;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method
