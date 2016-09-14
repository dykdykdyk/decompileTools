.class public final Lcom/nut/blehunter/ui/a/a;
.super Landroid/support/v7/widget/dx;
.source "AlertSoundAdapter.java"


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
.field public c:I

.field private d:Lcom/nut/blehunter/ui/a/d;

.field private e:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;ILcom/nut/blehunter/ui/a/d;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a;->e:[Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/nut/blehunter/ui/a/a;->c:I

    .line 44
    iput-object p3, p0, Lcom/nut/blehunter/ui/a/a;->d:Lcom/nut/blehunter/ui/a/d;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/nut/blehunter/ui/a/b;

    iget-object v2, p0, Lcom/nut/blehunter/ui/a/a;->d:Lcom/nut/blehunter/ui/a/d;

    invoke-direct {v1, v0, v2}, Lcom/nut/blehunter/ui/a/b;-><init>(Landroid/view/View;Lcom/nut/blehunter/ui/a/d;)V

    return-object v1
.end method

.method public final a(Landroid/support/v7/widget/ex;I)V
    .locals 3

    .prologue
    .line 57
    check-cast p1, Lcom/nut/blehunter/ui/a/b;

    .line 58
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a;->e:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 59
    iget-object v1, p1, Lcom/nut/blehunter/ui/a/b;->l:Landroid/widget/RadioButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v1, p1, Lcom/nut/blehunter/ui/a/b;->l:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p1, Lcom/nut/blehunter/ui/a/b;->l:Landroid/widget/RadioButton;

    iget v0, p0, Lcom/nut/blehunter/ui/a/a;->c:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a;->e:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method
